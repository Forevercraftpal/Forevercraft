# Warding Incense — Rare Healer
# Heals 2 hearts (4 HP) + Fire Resistance 10s within 14 blocks
# Cooldown: 22 seconds

advancement revoke @s only evercraft:artifacts/healer/use_incense
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"incense"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 6
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_incense matches 1.. run tellraw @s [{"text":"[Warding Incense] ","color":"aqua"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_incense"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_incense matches 1.. run return 0

# === HEAL + FIRE RESISTANCE ===
execute at @s run effect give @a[distance=..14] instant_health 1 1 false
execute at @s run effect give @a[distance=..14] fire_resistance 200 0 false
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..14,tag=ec.tame_protected] instant_health 1 1 true
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..14,tag=ec.tame_protected] fire_resistance 200 0 true

# Feedback
execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..14] ~ ~ ~ 0.8 1.3
execute at @s run particle flame ~ ~1.5 ~ 1.5 0.5 1.5 0.02 15
tellraw @s [{"text":"[Warding Incense] ","color":"aqua"},{"text":"Healed and warded all players within 14 blocks","color":"green"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..14,tag=!ec.healer_self] run tellraw @s [{"text":"[Warding Incense] ","color":"aqua"},{"text":"Fire cannot touch you!","color":"green"}]
tag @s remove ec.healer_self

scoreboard players set @s ec.hl_incense 22
scoreboard players set @s ec.hl_locked 1
