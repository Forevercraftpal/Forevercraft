# Phoenix Plume — Ornate Healer
# Heals 4 hearts (8 HP) + cleanses all negative effects within 20 blocks
# Cooldown: 25 seconds

advancement revoke @s only evercraft:artifacts/healer/use_plume
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"plume"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 7
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_plume matches 1.. run tellraw @s [{"text":"[Phoenix Plume] ","color":"dark_purple"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_plume"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_plume matches 1.. run return 0

# === CLEANSE + HEAL ===
execute at @s as @a[distance=..20] run effect clear @s poison
execute at @s as @a[distance=..20] run effect clear @s wither
execute at @s as @a[distance=..20] run effect clear @s slowness
execute at @s as @a[distance=..20] run effect clear @s mining_fatigue
execute at @s as @a[distance=..20] run effect clear @s blindness
execute at @s as @a[distance=..20] run effect clear @s hunger
execute at @s as @a[distance=..20] run effect clear @s nausea
execute at @s as @a[distance=..20] run effect clear @s darkness
execute at @s as @a[distance=..20] run effect clear @s bad_omen
execute at @s run effect give @a[distance=..20] instant_health 1 2 false
# Tamed animals
execute at @s as @e[type=#evercraft:tameable_companions,distance=..20,tag=ec.tame_protected] run effect clear @s poison
execute at @s as @e[type=#evercraft:tameable_companions,distance=..20,tag=ec.tame_protected] run effect clear @s wither
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..20,tag=ec.tame_protected] instant_health 1 2 true

# Feedback
execute at @s run playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..20] ~ ~ ~ 1 1.2
execute at @s run particle flame ~ ~1.5 ~ 2.5 1 2.5 0.05 30
execute at @s run particle heart ~ ~2 ~ 2 0.5 2 0.1 15
tellraw @s [{"text":"[Phoenix Plume] ","color":"dark_purple"},{"text":"Purified and healed all players within 20 blocks","color":"green"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..20,tag=!ec.healer_self] run tellraw @s [{"text":"[Phoenix Plume] ","color":"dark_purple"},{"text":"The phoenix's flame cleanses all!","color":"green"}]
tag @s remove ec.healer_self

scoreboard players set @s ec.hl_plume 25
scoreboard players set @s ec.hl_locked 1
