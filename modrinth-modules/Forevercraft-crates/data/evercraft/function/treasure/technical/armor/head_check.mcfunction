# Tag Update
tag @s remove ec.dripstone_helmet
tag @s remove ec.flower_helmet
tag @s remove ec.soul_helmet

# Helmet Detection
tag @s[predicate=evercraft:treasure/armor/dripstone_helmet] add ec.dripstone_helmet
tag @s[predicate=evercraft:treasure/armor/flower_helmet] add ec.flower_helmet
tag @s[predicate=evercraft:treasure/armor/soul_helmet] add ec.soul_helmet

advancement revoke @s only evercraft:treasure/technical/armor/helmet_durability
advancement revoke @s only evercraft:treasure/technical/armor/helmet