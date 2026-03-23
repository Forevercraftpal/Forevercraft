# Kill sentry iron golems
execute as @e[type=iron_golem,tag=sentry_trim] at @s run particle minecraft:poof ~ ~1 ~ 0.5 1 0.5 0.05 30
execute as @e[type=iron_golem,tag=sentry_trim] at @s run playsound minecraft:entity.iron_golem.death hostile @a ~ ~ ~ 0.5 1.2
kill @e[type=iron_golem,tag=sentry_trim]
