# Spawn a vex ally that fights for the player
summon vex ~ ~1 ~ {Tags:["vex_ally_new"]}
execute as @e[type=vex,tag=vex_ally_new,distance=..5,limit=1] run function evercraft:trim/full_set/vex/setup_ally
playsound minecraft:entity.vex.ambient player @s ~ ~ ~ 0.5 1.2
