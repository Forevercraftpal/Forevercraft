# The Leviathan — Enter Phase 2: The Depths

tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_aqua"},{text:"The Leviathan",color:"dark_aqua",bold:true},{text:": ",color:"dark_red"},{text:"\"The depths will swallow you whole...\"",color:"aqua",italic:true}]

# VFX
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run particle minecraft:squid_ink ~ ~1 ~ 3 2 3 0.1 50
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.elder_guardian.curse master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.4

# Spawn 3 whirlpool entities
execute at @e[type=guardian,tag=ec.rd_boss,limit=1] run summon marker ~8 ~ ~8 {Tags:["ec.rd_mechanic","ec.rd_lv_whirlpool"]}
execute at @e[type=guardian,tag=ec.rd_boss,limit=1] run summon marker ~-8 ~ ~-8 {Tags:["ec.rd_mechanic","ec.rd_lv_whirlpool"]}
execute at @e[type=guardian,tag=ec.rd_boss,limit=1] run summon marker ~ ~ ~10 {Tags:["ec.rd_mechanic","ec.rd_lv_whirlpool"]}

# Speed increase
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase2 0.2 add_multiplied_base
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase2 0.3 add_multiplied_base
