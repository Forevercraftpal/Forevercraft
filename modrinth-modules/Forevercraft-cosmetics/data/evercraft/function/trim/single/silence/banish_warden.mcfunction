# Banish an emerging warden - Silence trim protection
# Run as the warden being banished

# Tag to prevent loot drops
tag @s add silence_banished

# Visual and audio effects
particle minecraft:sculk_charge_pop ~ ~1 ~ 0.5 0.5 0.5 0.1 30
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1
playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 0.5 0.5
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.3 2

# Notify nearby silence-trimmed players
execute as @a[tag=single_silence,distance=..48] run tellraw @s [{"text":"[Silence Trim] ","color":"dark_aqua"},{"text":"Your armor's presence calmed the ancient guardian...","color":"gray","italic":true}]

# Remove the warden without loot (tp to void then kill, or use /kill which doesn't drop loot for wardens)
# Wardens don't drop loot by default anyway, but we use tp to be safe
tp @s ~ ~-500 ~
kill @s
