# Tag Update
tag @s remove ec.desert_chestplate
tag @s remove ec.dark_forest_chestplate
tag @s remove ec.ocean_chestplate
tag @s remove ec.wind_chestplate

# Chestplate Detection
tag @s[predicate=evercraft:treasure/armor/dark_forest_chestplate] add ec.dark_forest_chestplate
tag @s[predicate=evercraft:treasure/armor/desert_chestplate] add ec.desert_chestplate
tag @s[predicate=evercraft:treasure/armor/ocean_chestplate] add ec.ocean_chestplate
tag @s[predicate=evercraft:treasure/armor/wind_chestplate] add ec.wind_chestplate

advancement revoke @s only evercraft:treasure/technical/armor/chest_durability
advancement revoke @s only evercraft:treasure/technical/armor/chestplate