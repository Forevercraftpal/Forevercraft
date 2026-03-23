# Ashcrown Mace — Fortress Per-Tick Processing
# Run as fortress marker, at fortress marker position
# Allies: Resistance II, Enemies: Slowness II
# Radius: 6 blocks normal, 8 blocks spirit (checked via caster's tier)

# Apply effects every 20 ticks to reduce overhead
execute store result score #ft_mod ec.temp run time query gametime
scoreboard players operation #ft_mod ec.temp %= #20 ec.const
execute unless score #ft_mod ec.temp matches 0 run return 0

# Allies within radius: Resistance II (2 seconds to cover 20-tick gap)
effect give @a[distance=..8] resistance 2 1 true

# Enemies within radius: Slowness II
effect give @e[distance=..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] slowness 2 1 false

# Fortress visual boundary particles
particle ash ~ ~0.5 ~ 4.0 0.3 4.0 0.02 10
particle dust{color:[1.0,0.8,0.2],scale:1.0} ~ ~0.1 ~ 3.0 0.0 3.0 0.01 5
