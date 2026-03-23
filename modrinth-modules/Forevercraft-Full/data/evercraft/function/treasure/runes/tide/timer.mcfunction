execute at @s[scores={ec.tick=15}] run particle minecraft:dust_plume ~ ~ ~ 0.5 0.5 0.5 0.2 50 force

execute at @s run fill ~-2 ~2 ~2 ~2 ~-2 ~-2 air replace water

execute at @s[scores={ec.tide_rune=1}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~ 0.5 2 1

scoreboard players remove @s ec.tide_rune 1