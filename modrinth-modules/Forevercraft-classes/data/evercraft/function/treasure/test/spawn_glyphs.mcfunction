# Test: Spawn All Glyphs
# Gives player one of each glyph rune (13 total)

tellraw @s [{text:"[Test] ",color:"gold"},{text:"Spawning all Glyphs...",color:"gray"}]

loot give @s loot evercraft:treasure/runes/emberheart
loot give @s loot evercraft:treasure/runes/verdant
loot give @s loot evercraft:treasure/runes/quicksilver
loot give @s loot evercraft:treasure/runes/obsidian
loot give @s loot evercraft:treasure/runes/zephyr
loot give @s loot evercraft:treasure/runes/briar
loot give @s loot evercraft:treasure/runes/stalwart
loot give @s loot evercraft:treasure/runes/gilded
loot give @s loot evercraft:treasure/runes/tidecall
loot give @s loot evercraft:treasure/runes/hearthstone
loot give @s loot evercraft:treasure/runes/prism
loot give @s loot evercraft:treasure/runes/tempest
loot give @s loot evercraft:treasure/runes/arcanum

tellraw @s [{text:"[Test] ",color:"gold"},{text:"13 Glyphs ",color:"dark_purple"},{text:"given!",color:"green"}]
