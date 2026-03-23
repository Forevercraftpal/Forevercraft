# ============================================================
# Black Market — 1s Self-Scheduling Tick
# ============================================================
schedule function evercraft:black_market/tick 1s replace

# Gate: no players online = nothing to do
execute unless entity @a run return 0

# Clean up marker + label if barrel block was broken (only check when a player is nearby)
execute as @e[type=marker,tag=BM.Barrel] at @s if entity @a[distance=..8] unless block ~ ~ ~ minecraft:barrel run function evercraft:black_market/on_barrel_broken

# Tick the GUI for any players who have the menu open
execute as @a[tag=BM.InMenu] at @s run function evercraft:black_market/gui/tick
