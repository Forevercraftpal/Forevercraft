# Wyrmcleaver — Aegis Per-Tick Processing
# Run as aegis marker, at its position
# Allies: Resistance II + Fire Resistance
# Enemies: Slowness II + ignite

# Apply effects every 20 ticks to reduce overhead
execute store result score #aegis_mod ec.temp run time query gametime
scoreboard players operation #aegis_mod ec.temp %= #20 ec.const
execute unless score #aegis_mod ec.temp matches 0 run return 0

# === ALLY EFFECTS (6-block radius, spirit: 8) ===
# Resistance II + Fire Resistance for 2 seconds (covers 20-tick gap)
effect give @a[distance=..8] resistance 2 1 true
effect give @a[distance=..8] fire_resistance 2 0 true

# === ENEMY EFFECTS ===
# Slowness II + ignite 4 seconds
effect give @e[distance=..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] slowness 2 1 false
execute as @e[distance=..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run data merge entity @s {Fire:80s}

# === VFX — Fiery boundary ===
particle flame ~ ~0.5 ~ 4.0 0.3 4.0 0.04 12
particle dust{color:[1.0,0.5,0.0],scale:1.2} ~ ~0.2 ~ 3.5 0.1 3.5 0.01 8
particle lava ~ ~0.3 ~ 3.0 0.1 3.0 0.02 3
