# Mending Chalice — Rare Healer
# Heals 2 hearts (4 HP) + Regeneration I 5s within 16 blocks
# Cooldown: 20 seconds

advancement revoke @s only evercraft:artifacts/healer/use_chalice
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"chalice"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 5
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_chalice matches 1.. run tellraw @s [{"text":"[Mending Chalice] ","color":"aqua"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_chalice"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_chalice matches 1.. run return 0

# === HEAL + REGEN ===
execute at @s run effect give @a[distance=..16] instant_health 1 1 false
execute at @s run effect give @a[distance=..16] regeneration 100 0 false
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..16,tag=ec.tame_protected] instant_health 1 1 true
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..16,tag=ec.tame_protected] regeneration 100 0 true

# Feedback
execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 0.8 1.5
execute at @s run particle heart ~ ~1.5 ~ 2 0.5 2 0.1 12
tellraw @s [{"text":"[Mending Chalice] ","color":"aqua"},{"text":"Healed and restored all players within 16 blocks","color":"green"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..16,tag=!ec.healer_self] run tellraw @s [{"text":"[Mending Chalice] ","color":"aqua"},{"text":"Wounds mending...","color":"green"}]
tag @s remove ec.healer_self

scoreboard players set @s ec.hl_chalice 20
scoreboard players set @s ec.hl_locked 1
