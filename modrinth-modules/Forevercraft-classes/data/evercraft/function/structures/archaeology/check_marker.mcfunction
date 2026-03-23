# Archaeology brush completion check — runs as marker, at marker position
# Detects when the suspicious block has been fully brushed (converted to sand/gravel)
# Bulletproof: only triggers when the block actually converts, not on brush durability changes

# Block still suspicious — player is still brushing, do nothing
execute if block ~ ~ ~ #evercraft:trim/sus_block run return 0

# Block is gone — brushing completed (or block was destroyed)
# Confirm a brush-holding player is nearby (rules out explosions/mining)
# Run spawn_crate as that player, positioned here (marker = former block location)
execute as @p[distance=..6] if items entity @s weapon.mainhand minecraft:brush if predicate evercraft:treasure/archaeology/brush_chance run function evercraft:structures/archaeology/spawn_crate

# Clean up marker regardless of whether crate spawned
kill @s
