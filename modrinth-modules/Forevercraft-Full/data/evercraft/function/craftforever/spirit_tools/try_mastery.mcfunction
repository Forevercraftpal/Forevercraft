# Spirit Tools — Attempt mastery activation
# Run as/at: player who held sneak for 5 ticks with spirit tool held, CD≤0

# FIX #8: Check protected zones first — abort if near protected structure
function evercraft:craftforever/spirit_tools/check_protected
execute unless entity @s[tag=ec.st_zone_safe] run return 0

# Dispatch mastery by tool type
execute if score @s ec.st_tool matches 1 run function evercraft:craftforever/spirit_tools/earthsong/mastery
execute if score @s ec.st_tool matches 2 run function evercraft:craftforever/spirit_tools/bloomweaver/mastery
execute if score @s ec.st_tool matches 3 run function evercraft:craftforever/spirit_tools/tidecaller/mastery
execute if score @s ec.st_tool matches 4 run function evercraft:craftforever/spirit_tools/dustwalker/mastery
execute if score @s ec.st_tool matches 5 run function evercraft:craftforever/spirit_tools/heartwood/mastery
execute if score @s ec.st_tool matches 6 run function evercraft:craftforever/spirit_tools/silkgrasp/mastery
