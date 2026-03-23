# Lore Roll: Detect nearby structure
# Run as player, at player. Sets ec.lore_struct_id (0 = no structure)
# Structure IDs match the predicate numbering used in structure crates

scoreboard players set @s ec.lore_struct_id 0

# Overworld structures
execute if predicate evercraft:structures/structure/village run scoreboard players set @s ec.lore_struct_id 17
execute if predicate evercraft:structures/structure/pillager_outpost run scoreboard players set @s ec.lore_struct_id 11
execute if predicate evercraft:structures/structure/mansion run scoreboard players set @s ec.lore_struct_id 7
execute if predicate evercraft:structures/structure/monument run scoreboard players set @s ec.lore_struct_id 9
execute if predicate evercraft:structures/structure/shipwreck run scoreboard players set @s ec.lore_struct_id 13
execute if predicate evercraft:structures/structure/ocean_ruin run scoreboard players set @s ec.lore_struct_id 10
execute if predicate evercraft:structures/structure/desert_pyramid run scoreboard players set @s ec.lore_struct_id 3
execute if predicate evercraft:structures/structure/jungle_pyramid run scoreboard players set @s ec.lore_struct_id 6
execute if predicate evercraft:structures/structure/igloo run scoreboard players set @s ec.lore_struct_id 5
execute if predicate evercraft:structures/structure/mineshaft run scoreboard players set @s ec.lore_struct_id 8
execute if predicate evercraft:structures/structure/stronghold run scoreboard players set @s ec.lore_struct_id 14
execute if predicate evercraft:structures/structure/ruined_portal run scoreboard players set @s ec.lore_struct_id 12
execute if predicate evercraft:structures/structure/trail_ruins run scoreboard players set @s ec.lore_struct_id 15
execute if predicate evercraft:structures/structure/trial_chambers run scoreboard players set @s ec.lore_struct_id 16
execute if predicate evercraft:structures/structure/ancient_city run scoreboard players set @s ec.lore_struct_id 1

# Nether structures
execute if predicate evercraft:structures/structure/bastion_remnant run scoreboard players set @s ec.lore_struct_id 2
execute if predicate evercraft:structures/structure/fortress run scoreboard players set @s ec.lore_struct_id 4

# End structures
execute if predicate evercraft:structures/structure/end_city run scoreboard players set @s ec.lore_struct_id 18
