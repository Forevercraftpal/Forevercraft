# Medicinal Bandages — Common Healer
# Heals all players within 8 blocks for 1 heart (2 HP)
# Cooldown: 15 seconds

# Revoke advancement for re-trigger
advancement revoke @s only evercraft:artifacts/healer/use_bandages

# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"bandages"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 1
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

# Check cooldown
execute if score @s ec.hl_bandage matches 1.. run tellraw @s [{"text":"[Medicinal Bandages] ","color":"white"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_bandage"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_bandage matches 1.. run return 0

# === HEAL ===
execute at @s run effect give @a[distance=..8] instant_health 1 0 false
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..8,tag=ec.tame_protected] instant_health 1 0 true

# Feedback
execute at @s run playsound minecraft:block.amethyst_block.chime master @a[distance=..8] ~ ~ ~ 1 1.2
execute at @s run particle heart ~ ~1.5 ~ 1 0.5 1 0.1 8
tellraw @s [{"text":"[Medicinal Bandages] ","color":"white"},{"text":"Healed all players within 8 blocks","color":"green"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..8,tag=!ec.healer_self] run tellraw @s [{"text":"[Medicinal Bandages] ","color":"white"},{"text":"You were healed!","color":"green"}]
tag @s remove ec.healer_self

# Set cooldown
scoreboard players set @s ec.hl_bandage 15
scoreboard players set @s ec.hl_locked 1
