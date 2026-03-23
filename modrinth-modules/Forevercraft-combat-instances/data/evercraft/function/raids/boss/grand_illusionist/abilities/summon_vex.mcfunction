# Grand Illusionist — Summon Vex Swarm
# Summons 3 vex near a random copy or the boss

# Cap vex at 6
execute store result score #rd_temp ec.var if entity @e[tag=ec.rd_gi_vex]
execute if score #rd_temp ec.var matches 6.. run return 0

# Summon near boss
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon vex ~1 ~1 ~0 {Tags:["ec.rd_gi_vex","ec.rd_minion"],PersistenceRequired:1b}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon vex ~-1 ~1 ~1 {Tags:["ec.rd_gi_vex","ec.rd_minion"],PersistenceRequired:1b}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon vex ~0 ~1 ~-1 {Tags:["ec.rd_gi_vex","ec.rd_minion"],PersistenceRequired:1b}

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.evoker.prepare_summon hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.0
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:witch ~ ~1 ~ 1 0.5 1 0.1 10
