# Patron particle crown system — runs every 10 ticks
# 10-point crown circle above head, per-tier particle types
schedule function evercraft:mobs/patrons/particles/init 10t

# OPT: Consolidated 6 @e scans into 1 + added proximity gate
execute as @e[tag=ec.patron] at @s anchored eyes run function evercraft:mobs/patrons/particles/dispatch
