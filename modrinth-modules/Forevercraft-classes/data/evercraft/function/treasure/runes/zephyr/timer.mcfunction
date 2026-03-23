execute at @s[scores={ec.tick=15}] run particle minecraft:reverse_portal ~ ~ ~ 0.5 0.5 0.5 2 50 force

attribute @s[scores={ec.zephyr_rune=1}] knockback_resistance modifier remove ec.zephyr_rune
attribute @s[scores={ec.zephyr_rune=1}] attack_damage modifier remove ec.zephyr_rune

execute at @s[scores={ec.zephyr_rune=1}] run playsound minecraft:entity.glow_squid.death master @s ~ ~ ~ 0.5 2 1

execute at @s as @a[scores={ec.use_pearl=1..},distance=..8] run function evercraft:treasure/runes/zephyr/kill_pearl

scoreboard players remove @s ec.zephyr_rune 1