# Thornmaw — Wild Summon (Right-click, 15s CD)
# Summon 3 spectral beasts for 10s (spirit: 15s)
# Wolf (30 HP), Iron Golem (60 HP), Parrot (scout)

# Set cooldown
scoreboard players set @s ec.sp_cd1 300

# Kill any existing beasts first
kill @e[tag=ec.sp_beast]

# Summon Spectral Wolf (30 HP)
execute positioned ~ ~ ~2 run summon wolf ~ ~ ~ {Tags:["ec.sp_beast"],PersistenceRequired:true,CustomName:{text:"Spectral Wolf",color:"aqua",italic:false},Health:30.0f,Attributes:[{id:"minecraft:max_health",base:30.0d}],Tame:1b,CollarColor:3}

# Summon Spectral Bear (Iron Golem, 60 HP)
execute positioned ~2 ~ ~ run summon iron_golem ~ ~ ~ {Tags:["ec.sp_beast"],PersistenceRequired:true,CustomName:{text:"Spectral Bear",color:"aqua",italic:false},Health:60.0f,Attributes:[{id:"minecraft:max_health",base:60.0d}],PlayerCreated:1b}

# Summon Spectral Hawk (Parrot)
execute positioned ~-2 ~ ~ run summon parrot ~ ~ ~ {Tags:["ec.sp_beast"],PersistenceRequired:true,CustomName:{text:"Spectral Hawk",color:"aqua",italic:false},Variant:0}

# Set beast timer: 200 ticks (10s) normal, 300 ticks (15s) spirit
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 300
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 200

# Tag player as beast active
tag @s add ec.sp_beast_active

# VFX + SFX
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1.0 1.2
playsound minecraft:entity.wolf_puglin.ambient player @a ~ ~ ~ 1.0 0.8
particle soul ~ ~1 ~ 1.0 0.5 1.0 0.05 30
particle enchant ~ ~1 ~ 1.0 1.0 1.0 1.0 20

title @s actionbar [{"text":"WILD SUMMON!","color":"aqua","bold":true}]
