# Tears of the World Tree — Mythical Healer
# Heals 8 hearts (16 HP) + Regen III 10s + Absorption III 15s within 32 blocks
# Emergency: players below 20% HP get extra 4 hearts (8 HP)
# Cooldown: 30 seconds

advancement revoke @s only evercraft:artifacts/healer/use_tears
# Mark for delayed restore (consume_item fires before item removal — restore next tick)
scoreboard players set @s ec.hl_restore_hand 0
execute if data entity @s SelectedItem.components."minecraft:custom_data"{healer_id:"tears"} run scoreboard players set @s ec.hl_restore_hand 1
scoreboard players set @s ec.hl_restore_id 11
tag @s add ec.hl_restore
# Save actual item data (preserves glyphforge runes, patina, mastery, etc.)
execute if score @s ec.hl_restore_hand matches 1 run data modify storage evercraft:item_restore healer set from entity @s SelectedItem
execute if score @s ec.hl_restore_hand matches 0 run data modify storage evercraft:item_restore healer set from entity @s equipment.offhand

execute if score @s ec.hl_tears matches 1.. run tellraw @s [{"text":"[Tears of the World Tree] ","color":"gold"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_tears"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_tears matches 1.. run return 0

# === HEAL + REGEN III + ABSORPTION III ===
execute at @s run effect give @a[distance=..32] instant_health 1 3 false
execute at @s run effect give @a[distance=..32] regeneration 200 2 false
execute at @s run effect give @a[distance=..32] absorption 300 2 false
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..32,tag=ec.tame_protected] instant_health 1 3 true
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..32,tag=ec.tame_protected] regeneration 200 2 true
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..32,tag=ec.tame_protected] absorption 300 2 true

# Emergency bonus: players below 20% HP (4 HP) get extra heal
execute at @s as @a[distance=..32] store result score @s ec.hl_temp run data get entity @s Health
execute at @s as @a[distance=..32,scores={ec.hl_temp=..4}] run effect give @s instant_health 1 2 false

# Feedback — mythical-tier dramatic effects
execute at @s run playsound minecraft:ui.toast.challenge_complete master @a[distance=..32] ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..32] ~ ~ ~ 1 1.8
execute at @s run particle totem_of_undying ~ ~1.5 ~ 4 1 4 1 80
execute at @s run particle falling_water ~ ~2 ~ 4 1 4 0.1 40
execute at @s run particle heart ~ ~2.5 ~ 3 1 3 0.1 20

# Announcements
tellraw @s [{"text":"[Tears of the World Tree] ","color":"gold"},{"text":"The World Tree weeps — life surges through all within 32 blocks!","color":"yellow"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..32,scores={ec.hl_temp=..4},tag=!ec.healer_self] run tellraw @s [{"text":"[Tears of the World Tree] ","color":"gold"},{"text":"Emergency healing saves you from death's door!","color":"red"}]
execute at @s as @a[distance=..32,scores={ec.hl_temp=5..},tag=!ec.healer_self] run tellraw @s [{"text":"[Tears of the World Tree] ","color":"gold"},{"text":"Ancient healing flows through you!","color":"yellow"}]
tag @s remove ec.healer_self

# Broadcast
execute at @s run tellraw @a[distance=33..] [{"text":"[Tears of the World Tree] ","color":"gold"},{"selector":"@s","color":"white"},{"text":" invoked the World Tree's tears!","color":"yellow"}]

scoreboard players set @s ec.hl_tears 30
scoreboard players set @s ec.hl_locked 1
