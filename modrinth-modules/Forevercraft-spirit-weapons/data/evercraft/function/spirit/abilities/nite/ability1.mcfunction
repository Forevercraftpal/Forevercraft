# Nite — Dimensional Rift (Right-click, 10s CD)
# Slash open a 5-block line of cutting energy (spirit: 8 blocks)
# Entities in/passing through: 15 damage + teleported 10 blocks randomly
# Rift persists 3 seconds (spirit: 5 seconds)

# Set cooldown (200 ticks = 10 seconds)
scoreboard players set @s ec.sp_cd1 200

# Spawn rift markers along a line forward (5 blocks; spirit: 8)
execute anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["ec.sp_rift_marker","ec.sp_rift_new"],CustomName:{text:"rift1"}}
execute anchored eyes positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["ec.sp_rift_marker","ec.sp_rift_new"],CustomName:{text:"rift2"}}
execute anchored eyes positioned ^ ^ ^3 run summon marker ~ ~ ~ {Tags:["ec.sp_rift_marker","ec.sp_rift_new"],CustomName:{text:"rift3"}}
execute anchored eyes positioned ^ ^ ^4 run summon marker ~ ~ ~ {Tags:["ec.sp_rift_marker","ec.sp_rift_new"],CustomName:{text:"rift4"}}
execute anchored eyes positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["ec.sp_rift_marker","ec.sp_rift_new"],CustomName:{text:"rift5"}}
execute if score @s ec.sp_tier matches 7 anchored eyes positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["ec.sp_rift_marker","ec.sp_rift_new"],CustomName:{text:"rift6"}}
execute if score @s ec.sp_tier matches 7 anchored eyes positioned ^ ^ ^7 run summon marker ~ ~ ~ {Tags:["ec.sp_rift_marker","ec.sp_rift_new"],CustomName:{text:"rift7"}}
execute if score @s ec.sp_tier matches 7 anchored eyes positioned ^ ^ ^8 run summon marker ~ ~ ~ {Tags:["ec.sp_rift_marker","ec.sp_rift_new"],CustomName:{text:"rift8"}}

# Set rift lifetime using gametime calculation
# Store current gametime + duration in marker custom data
# Normal: 60 ticks (3s), Spirit: 100 ticks (5s)
execute if score @s ec.sp_tier matches 7 as @e[tag=ec.sp_rift_new] run scoreboard players set @s ec.sp_timer 100
execute unless score @s ec.sp_tier matches 7 as @e[tag=ec.sp_rift_new] run scoreboard players set @s ec.sp_timer 60
tag @e[tag=ec.sp_rift_new] remove ec.sp_rift_new

# VFX
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1.0 0.5
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 0.8 2.0
execute anchored eyes run particle reverse_portal ^ ^ ^3 0.2 0.2 2.5 0.1 40

title @s actionbar [{"text":"DIMENSIONAL RIFT!","color":"dark_purple","bold":true}]
