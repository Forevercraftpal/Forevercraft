# === HEARTWOOD — DISPATCH MINE ===
# Run as player. Execute at marker for position context.

# Sneaking = Precision Chop (4 planks, no tree fell) — always works
execute at @e[type=marker,tag=ec.st_axe_target,limit=1,sort=nearest] if predicate evercraft:is_sneaking run function evercraft:craftforever/spirit_tools/heartwood/precision_chop

# Standing = Spirit Fell (entire tree) — FIX #5: Only if leaves nearby (natural tree check)
# Check for leaves within 4 blocks of the broken log position to verify it's a tree, not a player-built structure
execute at @e[type=marker,tag=ec.st_axe_target,limit=1,sort=nearest] unless predicate evercraft:is_sneaking if block ~ ~1 ~ #minecraft:logs run function evercraft:craftforever/spirit_tools/heartwood/tree_check
execute at @e[type=marker,tag=ec.st_axe_target,limit=1,sort=nearest] unless predicate evercraft:is_sneaking unless block ~ ~1 ~ #minecraft:logs run function evercraft:craftforever/spirit_tools/heartwood/tree_check

execute at @e[type=marker,tag=ec.st_axe_target,limit=1,sort=nearest] run particle cherry_leaves ~ ~0.5 ~ 0.5 0.5 0.5 0.02 8
