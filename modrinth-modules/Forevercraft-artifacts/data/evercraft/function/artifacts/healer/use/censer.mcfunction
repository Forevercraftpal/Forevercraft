# Radiant Censer — Ornate Healer
# Heals 2 hearts (4 HP) + Regeneration II 8s within 18 blocks
# Cooldown: 24 seconds

advancement revoke @s only evercraft:artifacts/healer/use_censer
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"censer"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 8
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_censer matches 1.. run tellraw @s [{"text":"[Radiant Censer] ","color":"dark_purple"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_censer"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_censer matches 1.. run return 0

# === HEAL + REGEN II ===
execute at @s run effect give @a[distance=..18] instant_health 1 1 false
execute at @s run effect give @a[distance=..18] regeneration 160 1 false
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..18,tag=ec.tame_protected] instant_health 1 1 true
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..18,tag=ec.tame_protected] regeneration 160 1 true

# Feedback
execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..18] ~ ~ ~ 0.8 1.8
execute at @s run particle glow ~ ~1.5 ~ 2 0.5 2 0.05 20
tellraw @s [{"text":"[Radiant Censer] ","color":"dark_purple"},{"text":"Mending light bathes all players within 18 blocks","color":"green"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..18,tag=!ec.healer_self] run tellraw @s [{"text":"[Radiant Censer] ","color":"dark_purple"},{"text":"Radiant warmth surrounds you!","color":"green"}]
tag @s remove ec.healer_self

scoreboard players set @s ec.hl_censer 24
scoreboard players set @s ec.hl_locked 1
