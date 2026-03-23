# Hearthstone Marker Tick — runs as marker, at marker
# OPT: Consolidates 3 @e scans into 1 per-marker function call

# Break detection: if lodestone is gone, clean up
execute unless block ~ ~ ~ minecraft:lodestone run function evercraft:housing/on_break

# Ambient particles (only if a player is within render distance)
execute if entity @a[distance=..48] run particle minecraft:flame ~0 ~1.1 ~0 0.15 0.08 0.15 0.005 1
execute if entity @a[distance=..48] run particle minecraft:small_flame ~0 ~1.3 ~0 0.1 0.1 0.1 0.01 1

# Garden growth boost (tier 3+ hearthstones accelerate nearby crops)
# OPT: Single score check instead of 3 NBT reads
execute store result score #hs_tier ec.temp run data get entity @s data.owner_tier
execute if score #hs_tier ec.temp matches 3.. run function evercraft:housing/garden/tick
