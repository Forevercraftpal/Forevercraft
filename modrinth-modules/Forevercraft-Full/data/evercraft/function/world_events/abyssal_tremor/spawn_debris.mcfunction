# Abyssal Tremor — Spawn Debris
# Executed as a deep player, at their position
# Places ancient debris by replacing deepslate at a nearby underground position

# Summon temp marker at player pos
summon marker ~ ~ ~ {Tags:["ABYSS.temp"]}

# Spread to random nearby XZ position (5-20 blocks)
spreadplayers ~ ~ 5 20 false @e[type=marker,tag=ABYSS.temp,limit=1,sort=nearest]

# Teleport marker to deep underground Y level (-40)
execute as @e[type=marker,tag=ABYSS.temp,limit=1,sort=nearest] at @s run tp @s ~ -40 ~

# Check if position has deepslate — if not, discard
execute at @e[type=marker,tag=ABYSS.temp,limit=1,sort=nearest] unless block ~ ~ ~ deepslate run kill @e[type=marker,tag=ABYSS.temp]

# Place ancient debris where deepslate was found
execute at @e[type=marker,tag=ABYSS.temp,limit=1,sort=nearest] run setblock ~ ~ ~ ancient_debris

# Convert marker to debris tracker for cleanup
execute as @e[type=marker,tag=ABYSS.temp,limit=1,sort=nearest] run tag @s add ABYSS.Ore
execute as @e[type=marker,tag=ABYSS.temp] run tag @s remove ABYSS.temp

# Effects at debris location
execute at @e[type=marker,tag=ABYSS.Ore,limit=1,sort=nearest,tag=!ABYSS.announced] run particle minecraft:sculk_charge_pop ~ ~ ~ 1 1 1 0.1 10
execute as @e[type=marker,tag=ABYSS.Ore,limit=1,sort=nearest,tag=!ABYSS.announced] run tag @s add ABYSS.announced

# Safety cleanup
kill @e[type=marker,tag=ABYSS.temp]
