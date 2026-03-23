# Sentry Golem Creeper Handler - OPTIMIZED
# Only runs on creepers that haven't been tagged yet

# Tag creepers near sentry golems and disable their explosion
execute as @e[type=iron_golem,tag=sentry_trim] at @s as @e[type=creeper,distance=..10,tag=!sentry_no_explode] run function evercraft:trim/single/sentry/disable_creeper

# Sentry golems one-shot creepers (damage nearby creepers)
execute as @e[type=iron_golem,tag=sentry_trim] at @s as @e[type=creeper,distance=..4,limit=1] run damage @s 21 minecraft:mob_attack by @e[type=iron_golem,tag=sentry_trim,limit=1,sort=nearest]
