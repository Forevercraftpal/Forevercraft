execute at @s[scores={ec.tick=15}] run particle totem_of_undying ~ ~0.8 ~ 0.2 0.4 0.2 0.5 10 force @a

attribute @s[scores={ec.briar_rune=1}] movement_speed modifier remove ec.briar_rune
attribute @s[scores={ec.briar_rune=1}] attack_speed modifier remove ec.briar_rune

execute at @s[scores={ec.briar_rune=1}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~ 0.5 2 1

scoreboard players remove @s ec.briar_rune 1