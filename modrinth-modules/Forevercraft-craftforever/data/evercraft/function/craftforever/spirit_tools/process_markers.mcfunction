# === SPIRIT TOOLS — PROCESS MARKERS ===
# Check if marker blocks have been broken (position is now air)
# If so, trigger the appropriate mining ability at that position

# Earthsong markers
execute as @e[type=marker,tag=ec.st_pick_target] at @s if block ~ ~ ~ air run function evercraft:craftforever/spirit_tools/earthsong/on_break
kill @e[type=marker,tag=ec.st_pick_target]

# Dustwalker markers
execute as @e[type=marker,tag=ec.st_shov_target] at @s if block ~ ~ ~ air run function evercraft:craftforever/spirit_tools/dustwalker/on_break
kill @e[type=marker,tag=ec.st_shov_target]

# Heartwood markers
execute as @e[type=marker,tag=ec.st_axe_target] at @s if block ~ ~ ~ air run function evercraft:craftforever/spirit_tools/heartwood/on_break
kill @e[type=marker,tag=ec.st_axe_target]
