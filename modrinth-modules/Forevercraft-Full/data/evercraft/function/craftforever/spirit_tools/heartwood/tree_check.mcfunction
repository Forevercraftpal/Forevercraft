# === HEARTWOOD — TREE CHECK ===
# FIX #5: Only fell if this is a natural tree (leaves within 4 blocks above)
# Run at the broken log position. Scan upward for leaves.
# If no leaves found → single block only (don't destroy player builds)

# Search for leaves in a 4-block radius above the break point
# If any leaf block exists nearby, this is a tree — proceed with spirit fell
execute if block ~1 ~2 ~ #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~-1 ~2 ~ #minecraft:leaves run return 0
execute if block ~ ~2 ~1 #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~ ~2 ~-1 #minecraft:leaves run return 0
execute if block ~ ~3 ~ #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~ ~3 ~ #minecraft:leaves run return 0
execute if block ~1 ~3 ~ #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~1 ~3 ~ #minecraft:leaves run return 0
execute if block ~-1 ~3 ~ #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~-1 ~3 ~ #minecraft:leaves run return 0
execute if block ~ ~3 ~1 #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~ ~3 ~1 #minecraft:leaves run return 0
execute if block ~ ~3 ~-1 #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~ ~3 ~-1 #minecraft:leaves run return 0
execute if block ~ ~4 ~ #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~ ~4 ~ #minecraft:leaves run return 0
execute if block ~1 ~4 ~1 #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~1 ~4 ~1 #minecraft:leaves run return 0
execute if block ~-1 ~4 ~-1 #minecraft:leaves run function evercraft:craftforever/spirit_tools/heartwood/spirit_fell
execute if block ~-1 ~4 ~-1 #minecraft:leaves run return 0

# No leaves found — this is probably a player build. Don't fell.
# (The single block was already broken by the player, so nothing extra happens)
