# Macro: $(slot) = head, chest, legs, or feet
# Hopper minecart intermediary for writing armor data
# (Player equipment is read-only via data modify in 1.21.5+)

# Safety: kill any stale minecarts from a previous failed write
kill @e[type=hopper_minecart,tag=am_temp]

summon hopper_minecart ~ 320 ~ {Tags:["am_temp"],Items:[]}
$item replace entity @e[type=hopper_minecart,tag=am_temp,limit=1] container.0 from entity @s armor.$(slot)

# Write XP and level
execute store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:custom_data".weapon_xp int 1 run scoreboard players get #am_xp ec.var
execute store result entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:custom_data".weapon_level int 1 run scoreboard players get #am_level ec.var

# If enchants need updating, apply them
# Ensure enchantments component exists — default components aren't stored in entity NBT,
# so execute store result into the levels map silently fails without this
execute if score #am_enchants_dirty ec.var matches 1 unless data entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments" run data modify entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items[0].components."minecraft:enchantments" set value {}
execute if score #am_enchants_dirty ec.var matches 1 run function evercraft:armor_mastery/apply_enchants
scoreboard players set #am_enchants_dirty ec.var 0

# Update mastery lore line (last lore entry)
function evercraft:armor_mastery/get_xp_cost
execute store result storage evercraft:armor_mastery lore.level int 1 run scoreboard players get #am_level ec.var
execute store result storage evercraft:armor_mastery lore.xp int 1 run scoreboard players get #am_xp ec.var
execute store result storage evercraft:armor_mastery lore.cost int 1 run scoreboard players get #am_xp_cost ec.var
execute store result storage evercraft:armor_mastery lore.max_level int 1 run scoreboard players get #am_max_level ec.var
execute store result storage evercraft:armor_mastery lore.prestige int 1 run scoreboard players get #am_prestige ec.var
function evercraft:armor_mastery/update_mastery_lore with storage evercraft:armor_mastery lore

# Copy back to player
$item replace entity @s armor.$(slot) from entity @e[type=hopper_minecart,tag=am_temp,limit=1] container.0

# Cleanup (clear Items first so the cart doesn't drop them on kill)
data modify entity @e[type=hopper_minecart,tag=am_temp,limit=1] Items set value []
kill @e[type=hopper_minecart,tag=am_temp]