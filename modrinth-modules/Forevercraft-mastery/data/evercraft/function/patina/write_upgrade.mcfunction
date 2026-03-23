# Patina — Write stage upgrade to item via hopper cart
# Only called when a stage threshold is crossed (rare event)
# Macro: slot (item replace spec)
# Requires: #pat_ticks, #pat_new_stage, #pat_slot_type set

# Create hopper cart intermediary
kill @e[type=hopper_minecart,tag=pat_temp]
summon hopper_minecart ~ 320 ~ {Tags:["pat_temp"],Items:[]}
$item replace entity @e[type=hopper_minecart,tag=pat_temp,limit=1] container.0 from entity @s $(slot)

# Write updated total ticks to item
execute store result entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items[0].components."minecraft:custom_data".patina_ticks int 1 run scoreboard players get #pat_ticks ec.var

# Apply stage upgrade (modifies lore, stage value, announcements)
function evercraft:patina/upgrade

# Write back to player (equip sound plays but only on rare stage upgrades)
$item replace entity @s $(slot) from entity @e[type=hopper_minecart,tag=pat_temp,limit=1] container.0

# Reset accumulated delta for this slot (ticks are now saved on item)
execute if score #pat_slot_type ec.var matches 0 run scoreboard players set @s ec.pd0 0
execute if score #pat_slot_type ec.var matches 1 run scoreboard players set @s ec.pd1 0
execute if score #pat_slot_type ec.var matches 2 run scoreboard players set @s ec.pd2 0
execute if score #pat_slot_type ec.var matches 3 run scoreboard players set @s ec.pd3 0
execute if score #pat_slot_type ec.var matches 4 run scoreboard players set @s ec.pd4 0

# Cleanup (clear Items before kill to prevent drops)
data modify entity @e[type=hopper_minecart,tag=pat_temp,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=pat_temp]
