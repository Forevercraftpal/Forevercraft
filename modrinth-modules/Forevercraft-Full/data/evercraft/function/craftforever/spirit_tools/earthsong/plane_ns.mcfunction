# 5x5 NS plane (XY, same Z) — 24 surrounding blocks
execute positioned ~-2 ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~ ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~-2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-2 ~-1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~-1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~-1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~-1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~-1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~-1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~-1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~-1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-2 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~ ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-2 ~1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~1 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-2 ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-2 ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~-1 ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~-1 ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~ ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~ ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~1 ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~1 ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air
execute positioned ~2 ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute positioned ~2 ~2 ~ if predicate evercraft:mythical_tools/is_pickaxe_mineable run setblock ~ ~ ~ air

playsound minecraft:block.stone.break master @p ~ ~ ~ 1 0.8
particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 1 0.5 0.1 5
