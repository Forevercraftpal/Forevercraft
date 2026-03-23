# Summon 2 iron golems to protect the player (no drops)
summon iron_golem ~2 ~ ~ {PersistenceRequired:1b,Tags:["sentry_trim"],PlayerCreated:1b,DeathLootTable:"minecraft:empty"}
summon iron_golem ~-2 ~ ~ {PersistenceRequired:1b,Tags:["sentry_trim"],PlayerCreated:1b,DeathLootTable:"minecraft:empty"}

# Apply buffs and glowing so you can see them
execute as @e[type=iron_golem,tag=sentry_trim,distance=..5] run effect give @s strength 20 1 false
execute as @e[type=iron_golem,tag=sentry_trim,distance=..5] run effect give @s speed 20 1 false
execute as @e[type=iron_golem,tag=sentry_trim,distance=..5] run effect give @s glowing 20 0 false

playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ 1 0.8
schedule function evercraft:trim/single/sentry/kill_patrol 20s append
