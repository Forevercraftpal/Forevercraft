# 5x5 horizontal plane (XZ, same Y) — 24 surrounding blocks
# Each block: check if pickaxe-mineable, drop loot, set air

execute positioned ~-2 ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~ ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~ ~-2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-2 ~ ~-1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~ ~-1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~ ~-1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~ ~-1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~ ~-1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~ ~-1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~ ~-1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~ ~-1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-2 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-2 ~ ~1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~ ~1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~ ~1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~ ~1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~ ~1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~ ~1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~ ~1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~ ~1 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-2 ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~ ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~ ~2 if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air

playsound minecraft:block.stone.break master @p ~ ~ ~ 1 0.8
particle minecraft:sweep_attack ~ ~0.5 ~ 1 0.5 1 0.1 5
