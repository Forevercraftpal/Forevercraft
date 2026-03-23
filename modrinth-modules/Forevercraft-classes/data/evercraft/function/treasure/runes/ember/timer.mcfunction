execute at @s[scores={ec.tick=15}] run particle minecraft:snowflake ~ ~ ~ 0.5 0.5 0.5 0.2 50 force

execute at @s run setblock ~ ~-1 ~ blue_ice keep

execute at @s[scores={ec.ember=1}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~ 0.5 2 1

scoreboard players remove @s ec.ember 1