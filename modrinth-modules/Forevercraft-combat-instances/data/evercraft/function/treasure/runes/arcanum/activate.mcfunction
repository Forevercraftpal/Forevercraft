tag @s add ec.rune_activated

execute if entity @s[predicate=evercraft:treasure/runes/enchantables] run function evercraft:treasure/runes/arcanum/enchant

execute if entity @s[predicate=!evercraft:treasure/runes/enchantables] run function evercraft:treasure/runes/arcanum/invalid

advancement revoke @s only evercraft:treasure/runes/arcanum_glyph