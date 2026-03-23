# Bone Cudgel (Rare) — Passive: Undead Detection
# Nearby undead mobs glow, making them visible through walls
# Refreshes every 2 seconds (gated on str_tick)

# Only apply every 40 ticks (synced with strength aura refresh)
execute unless score @s ec.bl_str_tick matches 1 run return 0

# Apply Glowing to all undead within 24 blocks (4s duration, refreshed every 2s)
execute at @s as @e[type=#minecraft:undead,distance=..24] run effect give @s glowing 4 0 true

# Subtle soul particles at each revealed undead
execute at @s as @e[type=#minecraft:undead,distance=..24] at @s run particle soul_fire_flame ~ ~0.5 ~ 0.1 0.3 0.1 0.01 2
