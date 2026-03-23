# The Leviathan — Enter Phase 3: The Flood

tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_aqua"},{text:"The Leviathan",color:"dark_aqua",bold:true},{text:": ",color:"dark_red"},{text:"\"DROWN!\"",color:"dark_red",bold:true,italic:true}]

# VFX
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run particle minecraft:splash ~ ~1 ~ 5 3 5 0.5 200
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.generic.splash master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

# Kill whirlpools
kill @e[tag=ec.rd_lv_whirlpool]

# Max boss power
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase3 0.3 add_multiplied_base
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase3 0.5 add_multiplied_base

# Reset water level and timer
scoreboard players set #rd_lv_water_level ec.var 0
scoreboard players set #rd_lv_whirl_timer ec.var 0

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The water is rising! Kill the Leviathan before the chamber floods!",color:"aqua",bold:true}]
