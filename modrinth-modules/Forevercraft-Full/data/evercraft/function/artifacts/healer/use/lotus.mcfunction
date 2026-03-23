# Celestial Lotus — Exquisite Healer
# Heals 4 hearts (8 HP) + Absorption II 12s within 24 blocks
# Cooldown: 28 seconds

advancement revoke @s only evercraft:artifacts/healer/use_lotus
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"lotus"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 9
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_lotus matches 1.. run tellraw @s [{"text":"[Celestial Lotus] ","color":"light_purple"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_lotus"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_lotus matches 1.. run return 0

# === HEAL + ABSORPTION ===
execute at @s run effect give @a[distance=..24] instant_health 1 2 false
execute at @s run effect give @a[distance=..24] absorption 240 1 false
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..24,tag=ec.tame_protected] instant_health 1 2 true
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..24,tag=ec.tame_protected] absorption 240 1 true

# Feedback
execute at @s run playsound minecraft:entity.player.levelup master @a[distance=..24] ~ ~ ~ 0.8 1.5
execute at @s run particle end_rod ~ ~1.5 ~ 3 1 3 0.05 30
execute at @s run particle heart ~ ~2 ~ 2 0.5 2 0.1 15
tellraw @s [{"text":"[Celestial Lotus] ","color":"light_purple"},{"text":"Celestial light shields all players within 24 blocks","color":"green"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..24,tag=!ec.healer_self] run tellraw @s [{"text":"[Celestial Lotus] ","color":"light_purple"},{"text":"Golden light envelops you!","color":"green"}]
tag @s remove ec.healer_self

scoreboard players set @s ec.hl_lotus 28
scoreboard players set @s ec.hl_locked 1
