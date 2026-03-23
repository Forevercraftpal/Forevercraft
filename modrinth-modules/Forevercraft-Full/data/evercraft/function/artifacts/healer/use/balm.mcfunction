# Soothing Balm — Uncommon Healer
# Heals 2 hearts (4 HP) + Speed I 5s within 12 blocks
# Cooldown: 16 seconds

advancement revoke @s only evercraft:artifacts/healer/use_balm
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"balm"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 4
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_balm matches 1.. run tellraw @s [{"text":"[Soothing Balm] ","color":"blue"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_balm"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_balm matches 1.. run return 0

# === HEAL + SPEED ===
execute at @s run effect give @a[distance=..12] instant_health 1 1 false
execute at @s run effect give @a[distance=..12] speed 100 0 false
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..12,tag=ec.tame_protected] instant_health 1 1 true
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..12,tag=ec.tame_protected] speed 100 0 true

# Feedback
execute at @s run playsound minecraft:block.amethyst_block.chime master @a[distance=..12] ~ ~ ~ 1 1.4
execute at @s run particle happy_villager ~ ~1.5 ~ 1.5 0.5 1.5 0.1 12
tellraw @s [{"text":"[Soothing Balm] ","color":"blue"},{"text":"Healed and hastened all players within 12 blocks","color":"green"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..12,tag=!ec.healer_self] run tellraw @s [{"text":"[Soothing Balm] ","color":"blue"},{"text":"You feel invigorated!","color":"green"}]
tag @s remove ec.healer_self

scoreboard players set @s ec.hl_balm 16
scoreboard players set @s ec.hl_locked 1
