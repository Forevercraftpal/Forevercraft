# Treasure Container Tick - Scoreboard-based replacement for enchantment effects
# This runs every tick for entities with tag ec.treasure_container

# Increment timers
scoreboard players add @s ec.container_timer 1
scoreboard players add @s ec.container_lifetime 1

# Check if barrel is broken (not standing on barrel)
execute unless block ~ ~ ~ barrel run function evercraft:treasure/treasure/container/broke

# Refill loot periodically based on despawn speed setting
# Fast: 150 ticks, Standard: 300, Slow: 600, Sloth: 900, Hypersonic: 75
execute if entity @s[tag=ec.despawn_fast,scores={ec.container_timer=150..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill
execute if entity @s[tag=ec.despawn_standard,scores={ec.container_timer=300..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill
execute if entity @s[tag=ec.despawn_slow,scores={ec.container_timer=600..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill
execute if entity @s[tag=ec.despawn_sloth,scores={ec.container_timer=900..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill
execute if entity @s[tag=ec.despawn_hypersonic,scores={ec.container_timer=75..}] at @s if block ~ ~ ~ barrel[open=false] run function evercraft:treasure/treasure/container/refill

# Spawn container visual when on team ec.hit (every 2 ticks)
execute if entity @s[team=ec.hit] if score @s ec.container_timer matches 2.. run function evercraft:treasure/treasure/container/spawn
execute if entity @s[team=ec.hit] if score @s ec.container_timer matches 2.. run scoreboard players set @s ec.container_timer 0

# Delete after timeout (1200 ticks = 60 seconds)
execute if score @s ec.container_lifetime matches 1200.. run function evercraft:treasure/treasure/container/delete
