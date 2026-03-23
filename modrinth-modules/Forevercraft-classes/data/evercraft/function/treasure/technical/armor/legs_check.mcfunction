# Tag Update
tag @s remove ec.deep_dark_leggings
tag @s remove ec.nether_leggings
tag @s remove ec.taiga_pants

# Leggings Detection
tag @s[predicate=evercraft:treasure/armor/deep_dark_leggings] add ec.deep_dark_leggings
tag @s[predicate=evercraft:treasure/armor/nether_leggings] add ec.nether_leggings
tag @s[predicate=evercraft:treasure/armor/taiga_pants] add ec.taiga_pants

advancement revoke @s only evercraft:treasure/technical/armor/legs_durability
advancement revoke @s only evercraft:treasure/technical/armor/leggings