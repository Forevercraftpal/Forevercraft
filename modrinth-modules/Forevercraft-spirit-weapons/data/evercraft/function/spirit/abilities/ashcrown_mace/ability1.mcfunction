# Ashcrown Mace — Fortress (Right-click, 12s CD)
# Summon a fortress zone: allies get Resistance II, enemies get Slowness II
# Duration: 8s (160 ticks) normal, 12s (240 ticks) spirit
# Radius: 6 blocks normal, 8 blocks spirit

# Set cooldown
scoreboard players set @s ec.sp_cd1 240

# Kill any existing fortress marker
kill @e[tag=ec.sp_fortress_marker,sort=nearest,limit=1,distance=..20]

# Summon fortress marker at player position
summon marker ~ ~ ~ {Tags:["ec.sp_fortress_marker"],PersistenceRequired:true}

# Tag player as fortress active
tag @s add ec.sp_fortress_active

# Set timer
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 240
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 160

# VFX + SFX
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1.0 1.2
playsound minecraft:block.anvil.place player @a ~ ~ ~ 0.6 0.5
particle ash ~ ~0.5 ~ 3.0 0.5 3.0 0.1 50
particle dust{color:[0.6,0.4,0.2],scale:1.5} ~ ~0.2 ~ 3.0 0.1 3.0 0.01 30

title @s actionbar [{"text":"FORTRESS!","color":"yellow","bold":true}]
