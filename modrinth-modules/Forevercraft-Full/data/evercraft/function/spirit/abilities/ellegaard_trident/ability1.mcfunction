# Soul Piercer — Maelstrom (Right-click, 12s CD)
# Summon water vortex at player position — 6-block radius
# Pulls enemies inward + 4 damage/sec + Mining Fatigue II
# Duration: 6s (120 ticks) normal, 10s (200 ticks) spirit

# Set cooldown
scoreboard players set @s ec.sp_cd1 240

# Kill any existing owned maelstrom
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
execute as @e[tag=ec.sp_maelstrom_marker] if score @s ec.sp_owner = #owner_check ec.temp run kill @s

# Summon vortex at player position
summon marker ~ ~ ~ {Tags:["ec.sp_maelstrom_marker"],PersistenceRequired:true}
scoreboard players operation @e[tag=ec.sp_maelstrom_marker,limit=1,sort=nearest] ec.sp_owner = @s ec.sp_uid

# Set timer
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 200
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 120

# Tag player
tag @s add ec.sp_maelstrom_active

# VFX + SFX — water surge
playsound minecraft:ambient.underwater.enter player @a ~ ~ ~ 1.0 0.5
playsound minecraft:entity.player.splash player @a ~ ~ ~ 1.2 0.6
particle bubble ~ ~1 ~ 3.0 1.5 3.0 0.1 40
particle splash ~ ~0.5 ~ 3.0 0.5 3.0 0.1 30
particle rain ~ ~3 ~ 3.0 0.5 3.0 0.05 20

title @s actionbar [{"text":"MAELSTROM!","color":"dark_aqua","bold":true}]
