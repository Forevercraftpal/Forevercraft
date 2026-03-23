# The Ashen Lord — Enter Phase 2: The Soul Fire Floor
# Soul fire spreads, safe spots appear, boss gains fire aura

# Boss dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_red"},{text:"The Ashen Lord",color:"red",bold:true},{text:": ",color:"dark_red"},{text:"\"You dare wound me? Let this fortress become your pyre!\"",color:"gold",italic:true}]

# Phase 2 VFX burst
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 3 2 3 0.1 100
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.blaze.death master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.3

# Boss speed increase
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase2 0.15 add_multiplied_base

# Boss attack damage increase
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase2 0.5 add_multiplied_base

# Spawn initial safe spots
function evercraft:raids/boss/ashen_lord/abilities/shift_safe_spots

# Reset safe spot timer
scoreboard players set #rd_al_safe_timer ec.var 200
