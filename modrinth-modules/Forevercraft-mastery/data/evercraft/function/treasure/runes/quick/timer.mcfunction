execute at @s[scores={ec.tick=15}] run particle dust{color:[0.894,0.176,0.176],scale:1.5} ~ ~0.8 ~ 0.2 0.4 0.2 0.5 10 force @a

attribute @s[scores={ec.assa_rune=1}] attack_damage modifier remove ec.quick_rune
attribute @s[scores={ec.assa_rune=1}] movement_speed modifier remove ec.quick_rune

execute at @s[scores={ec.assa_rune=1}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~ 0.5 2 1

scoreboard players remove @s ec.assa_rune 1