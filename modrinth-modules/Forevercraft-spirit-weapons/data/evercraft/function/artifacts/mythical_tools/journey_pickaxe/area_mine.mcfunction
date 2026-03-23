# Journey Pickaxe - Area Mine Single Block
# Mines a single block if it's mineable by pickaxe

# Only mine blocks that are mineable by pickaxe (not air, water, lava, etc.)
execute if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
