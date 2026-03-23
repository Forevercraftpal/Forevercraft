# Housing — Iron Guard Tick (from housing/tick)
# Home iron golems one-shot creepers and disable their explosion

# Disable creeper explosions near guards (10 block radius)
execute as @e[type=iron_golem,tag=hs.iron_guard] at @s as @e[type=creeper,distance=..10,tag=!hs.ig_no_explode] run function evercraft:housing/iron_guard/disable_creeper

# One-shot creepers within melee range (4 blocks) — 21 damage > 20 HP
execute as @e[type=iron_golem,tag=hs.iron_guard] at @s run damage @e[type=creeper,distance=..4,limit=1] 21 minecraft:mob_attack by @s
