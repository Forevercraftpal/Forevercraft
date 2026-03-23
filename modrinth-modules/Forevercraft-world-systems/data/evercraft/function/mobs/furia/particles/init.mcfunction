# Furia subtle particle system — runs every 10 ticks
# Sparse particles, just enough to notice if you look
schedule function evercraft:mobs/furia/particles/init 10t

# OPT: Consolidated 3 @e scans into 1 + added proximity gate (matches patron pattern)
execute as @e[tag=ec.furia] at @s run function evercraft:mobs/furia/particles/dispatch
