effect clear @s absorption

execute at @s run particle dust{color:[0.929,0.831,0.106],scale:0.85} ~ ~0.400 ~ 0.4 0.8 0.4 0 5 force @a

execute if entity @s[scores={ec.absorb_steal=..0}] run function evercraft:treasure/runes/gilded/over

scoreboard players remove @s ec.absorb_steal 1