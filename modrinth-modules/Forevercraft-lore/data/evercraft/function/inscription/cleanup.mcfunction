# Inscription — Cleanup (scheduled 1 tick after glyph use)
# Restores glyphs for failed inscriptions (limit, no block, already inscribed)
# Uses per-player ec.inscr_glyph score to determine which glyph to return

# Skip restore for players whose rune activation already handled the glyph
tag @a[tag=ec.rune_activated] remove ec.inscr_restore
tag @a remove ec.rune_activated

# Restore glyphs for players who need it (per-player score-based)
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=1}] run loot give @s loot evercraft:treasure/runes/emberheart
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=2}] run loot give @s loot evercraft:treasure/runes/verdant
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=3}] run loot give @s loot evercraft:treasure/runes/quicksilver
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=4}] run loot give @s loot evercraft:treasure/runes/obsidian
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=5}] run loot give @s loot evercraft:treasure/runes/zephyr
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=6}] run loot give @s loot evercraft:treasure/runes/briar
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=7}] run loot give @s loot evercraft:treasure/runes/stalwart
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=8}] run loot give @s loot evercraft:treasure/runes/gilded
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=9}] run loot give @s loot evercraft:treasure/runes/tidecall
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=10}] run loot give @s loot evercraft:treasure/runes/hearthstone
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=11}] run loot give @s loot evercraft:treasure/runes/prism
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=12}] run loot give @s loot evercraft:treasure/runes/tempest
execute as @a[tag=ec.inscr_restore,scores={ec.inscr_glyph=13}] run loot give @s loot evercraft:treasure/runes/arcanum
tag @a[tag=ec.inscr_restore] remove ec.inscr_restore

# Clear pool selection tags
tag @a remove ec.inscr_pool_guild
tag @a remove ec.inscr_pool_home
tag @a remove ec.inscr_pool_personal
