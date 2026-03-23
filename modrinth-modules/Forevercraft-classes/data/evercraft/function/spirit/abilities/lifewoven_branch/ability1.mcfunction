# Lifewoven Branch — Sanctuary (Right-click, 15s CD)
# Healing zone: allies get Regen II + Resistance I + clear negative effects
# Enemies get Weakness II
# Duration: 10s (200 ticks) normal, 15s (300 ticks) spirit
# Radius: 8 blocks normal, 10 blocks spirit

# Set cooldown
scoreboard players set @s ec.sp_cd1 300

# Kill any existing owned sanctuary
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
execute as @e[tag=ec.sp_sanctuary_marker] if score @s ec.sp_owner = #owner_check ec.temp run kill @s

# Summon sanctuary marker at player position
summon marker ~ ~ ~ {Tags:["ec.sp_sanctuary_marker"],PersistenceRequired:true}
scoreboard players operation @e[tag=ec.sp_sanctuary_marker,limit=1,sort=nearest] ec.sp_owner = @s ec.sp_uid

# Tag player as sanctuary active
tag @s add ec.sp_sanctuary_active

# Set timer
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 300
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 200

# VFX + SFX
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1.0 1.2
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 1.5
particle happy_villager ~ ~0.5 ~ 4.0 0.5 4.0 0.1 30
particle dust{color:[0.2,1.0,0.3],scale:1.5} ~ ~0.2 ~ 4.0 0.1 4.0 0.01 20
particle enchant ~ ~1 ~ 3.0 1.0 3.0 1.0 15

title @s actionbar [{"text":"SANCTUARY!","color":"green","bold":true}]
