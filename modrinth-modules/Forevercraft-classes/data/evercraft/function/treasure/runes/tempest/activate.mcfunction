tag @s add ec.rune_activated

execute if entity @s[predicate=evercraft:treasure/runes/enchantables] run function evercraft:treasure/runes/tempest/enchant

execute if entity @s[predicate=!evercraft:treasure/runes/enchantables] run function evercraft:treasure/runes/tempest/invalid

advancement revoke @s only evercraft:treasure/runes/tempest_glyph