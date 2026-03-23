# Lifewarden's Tome — Exquisite Healer (Book — using_item trigger, not consumed)
# Heals all 2 hearts; players below 50% HP get 8 hearts instead (24 blocks)
# Cooldown: 26 seconds

advancement revoke @s only evercraft:artifacts/healer/use_tome

# Check cooldown
execute if score @s ec.hl_tome matches 1.. run tellraw @s [{"text":"[Lifewarden's Tome] ","color":"light_purple"},{"text":"Recharging... ","color":"gray"},{"score":{"name":"@s","objective":"ec.hl_tome"},"color":"dark_gray"},{"text":"s","color":"dark_gray"}]
execute if score @s ec.hl_tome matches 1.. run return 0

# === TRIAGE HEAL ===
# Base heal: 2 hearts (4 HP) to everyone
execute at @s run effect give @a[distance=..24] instant_health 1 1 false
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..24,tag=ec.tame_protected] instant_health 1 1 true

# Triage: players below 50% HP (10 HP) get additional 8 hearts (16 HP)
execute at @s as @a[distance=..24] store result score @s ec.hl_temp run data get entity @s Health
execute at @s as @a[distance=..24,scores={ec.hl_temp=..10}] run effect give @s instant_health 1 3 false

# Feedback
execute at @s run playsound minecraft:item.book.page_turn master @a[distance=..24] ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.player.levelup master @a[distance=..24] ~ ~ ~ 0.6 1.8
execute at @s run particle enchant ~ ~1.5 ~ 3 1 3 1 40
execute at @s run particle heart ~ ~2 ~ 2 0.5 2 0.1 12
tellraw @s [{"text":"[Lifewarden's Tome] ","color":"light_purple"},{"text":"Triage complete — the wounded are prioritized","color":"green"}]
tag @s add ec.healer_self
execute at @s as @a[distance=..24,scores={ec.hl_temp=..10},tag=!ec.healer_self] run tellraw @s [{"text":"[Lifewarden's Tome] ","color":"light_purple"},{"text":"Emergency healing surges through you!","color":"yellow"}]
execute at @s as @a[distance=..24,scores={ec.hl_temp=11..},tag=!ec.healer_self] run tellraw @s [{"text":"[Lifewarden's Tome] ","color":"light_purple"},{"text":"You were healed!","color":"green"}]
tag @s remove ec.healer_self

scoreboard players set @s ec.hl_tome 26
scoreboard players set @s ec.hl_locked 1
