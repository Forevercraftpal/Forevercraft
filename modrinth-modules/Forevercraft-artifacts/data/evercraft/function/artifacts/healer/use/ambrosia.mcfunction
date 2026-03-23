# Endless Ambrosia — Mythical Healer
# Full heal all players + Resistance II 10s within 32 blocks
# Cooldown: 30 seconds

advancement revoke @s only evercraft:artifacts/healer/use_ambrosia
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"ambrosia"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 10
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_ambrosia matches 1.. run tellraw @s [{"text":"[Endless Ambrosia] ","color":"gold"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_ambrosia"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_ambrosia matches 1.. run return 0

# === FULL HEAL + RESISTANCE II ===
execute at @s run effect give @a[distance=..32] instant_health 1 4 false
execute at @s run effect give @a[distance=..32] resistance 200 1 false
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..32,tag=ec.tame_protected] instant_health 1 4 true
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..32,tag=ec.tame_protected] resistance 200 1 true

# Feedback — mythical-tier dramatic effects
execute at @s run playsound minecraft:ui.toast.challenge_complete master @a[distance=..32] ~ ~ ~ 1 1.0
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..32] ~ ~ ~ 1 1.5
execute at @s run particle totem_of_undying ~ ~1.5 ~ 4 1 4 1 100
execute at @s run particle heart ~ ~2.5 ~ 3 1 3 0.1 25

# Announcements
tellraw @s [{"text":"[Endless Ambrosia] ","color":"gold"},{"text":"The food of the gods restores all within 32 blocks!","color":"yellow"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..32,tag=!ec.healer_self] run tellraw @s [{"text":"[Endless Ambrosia] ","color":"gold"},{"text":"Divine healing washes over you!","color":"yellow"}]
tag @s remove ec.healer_self

# Broadcast to all players
execute at @s run tellraw @a[distance=33..] [{"text":"[Endless Ambrosia] ","color":"gold"},{"selector":"@s","color":"white"},{"text":" unleashed the Ambrosia!","color":"yellow"}]

scoreboard players set @s ec.hl_ambrosia 30
scoreboard players set @s ec.hl_locked 1
