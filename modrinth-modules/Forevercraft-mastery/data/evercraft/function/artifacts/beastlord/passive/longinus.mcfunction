# Longinus (Mythical) — Passive: Divine Guardian
# When player drops below 4 HP, nearest tamed animal intervenes and saves them
# 60 second cooldown between procs

# Only proc if cooldown is ready
execute if score @s ec.bl_save_cd matches 1.. run return 0

# Check if player health is dangerously low (below 4 HP / 2 hearts)
execute store result score #bl_hp ec.var run data get entity @s Health 1
execute unless score #bl_hp ec.var matches ..4 run return 0

# Check for any owned tamed animal within 24 blocks
tag @s add bl.owner
execute at @s as @e[type=wolf,distance=..24] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=cat,distance=..24] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=parrot,distance=..24] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=fox,distance=..24,tag=ec.fox_tamed] run function evercraft:artifacts/beastlord/check_owned
tag @s remove bl.owner

# No owned animals nearby? Can't proc
execute unless entity @e[tag=bl.owned] run return 0

# === DEATH SAVE PROC ===
# Set cooldown
scoreboard players set @s ec.bl_save_cd 60

# Heal player
effect give @s instant_health 1 1 false
effect give @s absorption 10 1 false
effect give @s resistance 5 1 false

# Visual: soul particles burst on nearest owned animal + totem particles
execute at @e[tag=bl.owned,limit=1,sort=nearest] run particle soul_fire_flame ~ ~0.5 ~ 0.5 0.8 0.5 0.1 30
execute at @e[tag=bl.owned,limit=1,sort=nearest] run particle totem_of_undying ~ ~0.5 ~ 0.5 0.5 0.5 0.5 20
execute at @s run particle totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.3 30

# Sound
execute at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 0.8 1.2

# Chat message
tellraw @s [{"text":"[Beastlord] ","color":"dark_purple"},{"text":"Your companion saved you from death!","color":"gold","bold":true}]

# Clean up
tag @e[tag=bl.owned] remove bl.owned
