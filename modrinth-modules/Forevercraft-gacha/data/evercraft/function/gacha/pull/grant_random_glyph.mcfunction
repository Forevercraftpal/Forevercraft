# Grant a random Glyph from the 13 available
# Runs as @s = player

execute store result score #glyph_roll ec.temp run random value 1..13
execute if score #glyph_roll ec.temp matches 1 run loot give @s loot evercraft:treasure/runes/emberheart
execute if score #glyph_roll ec.temp matches 2 run loot give @s loot evercraft:treasure/runes/verdant
execute if score #glyph_roll ec.temp matches 3 run loot give @s loot evercraft:treasure/runes/quicksilver
execute if score #glyph_roll ec.temp matches 4 run loot give @s loot evercraft:treasure/runes/obsidian
execute if score #glyph_roll ec.temp matches 5 run loot give @s loot evercraft:treasure/runes/zephyr
execute if score #glyph_roll ec.temp matches 6 run loot give @s loot evercraft:treasure/runes/briar
execute if score #glyph_roll ec.temp matches 7 run loot give @s loot evercraft:treasure/runes/stalwart
execute if score #glyph_roll ec.temp matches 8 run loot give @s loot evercraft:treasure/runes/gilded
execute if score #glyph_roll ec.temp matches 9 run loot give @s loot evercraft:treasure/runes/tidecall
execute if score #glyph_roll ec.temp matches 10 run loot give @s loot evercraft:treasure/runes/hearthstone
execute if score #glyph_roll ec.temp matches 11 run loot give @s loot evercraft:treasure/runes/prism
execute if score #glyph_roll ec.temp matches 12 run loot give @s loot evercraft:treasure/runes/tempest
execute if score #glyph_roll ec.temp matches 13 run loot give @s loot evercraft:treasure/runes/arcanum
