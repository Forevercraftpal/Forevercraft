# The Ashen Lord — Enter Phase 3: The Inferno
# Room overheats, fire anchors spawn, boss at maximum power

# Boss dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_red"},{text:"The Ashen Lord",color:"red",bold:true},{text:": ",color:"dark_red"},{text:"\"BURN WITH ME!\"",color:"dark_red",bold:true,italic:true}]

# Kill safe spots from Phase 2
kill @e[tag=ec.rd_al_safe]

# Phase 3 VFX burst
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run particle minecraft:flame ~ ~1 ~ 5 3 5 0.2 200
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run particle minecraft:lava ~ ~1 ~ 5 2 5 0 50
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.ender_dragon.growl master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.4
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.generic.explode master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

# Max boss power
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase3 0.25 add_multiplied_base
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase3 1.0 add_multiplied_base

# Spawn 4 fire anchors (interaction entities, destroyable)
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon interaction ~12 ~1 ~ {Tags:["ec.rd_mechanic","ec.rd_al_anchor"],width:2.0f,height:2.5f,response:1b}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon interaction ~-12 ~1 ~ {Tags:["ec.rd_mechanic","ec.rd_al_anchor"],width:2.0f,height:2.5f,response:1b}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon interaction ~ ~1 ~12 {Tags:["ec.rd_mechanic","ec.rd_al_anchor"],width:2.0f,height:2.5f,response:1b}
execute at @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run summon interaction ~ ~1 ~-12 {Tags:["ec.rd_mechanic","ec.rd_al_anchor"],width:2.0f,height:2.5f,response:1b}

# Initialize anchor count
scoreboard players set #rd_al_anchors ec.var 4

# Reset heat timer
scoreboard players set #rd_al_heat_timer ec.var 0

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Destroy the fire anchors to stop the heat!",color:"yellow",bold:true}]
