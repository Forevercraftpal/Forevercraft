# Spirit Tool Progression — Check Single Player's Objectives
# Run as: player with active spirit tool, tier 1-6
# Routes to tool-specific objective check based on tool ID and current tier

# Reset objective counter
scoreboard players set @s ec.st_obj_done 0

# Route by tool to its tier-specific objective check
execute if score @s ec.st_tool matches 1 run function evercraft:craftforever/spirit_tools/progression/objectives/earthsong/check
execute if score @s ec.st_tool matches 2 run function evercraft:craftforever/spirit_tools/progression/objectives/bloomweaver/check
execute if score @s ec.st_tool matches 3 run function evercraft:craftforever/spirit_tools/progression/objectives/tidecaller/check
execute if score @s ec.st_tool matches 4 run function evercraft:craftforever/spirit_tools/progression/objectives/dustwalker/check
execute if score @s ec.st_tool matches 5 run function evercraft:craftforever/spirit_tools/progression/objectives/heartwood/check
execute if score @s ec.st_tool matches 6 run function evercraft:craftforever/spirit_tools/progression/objectives/silkgrasp/check

# Determine required count for current tier
# Tier 1→2: 5, Tier 2→3: 6, Tier 3→4: 7, Tier 4→5: 8, Tier 5→6: 9, Tier 6→7: 10
scoreboard players set #st_required ec.var 0
execute if score @s ec.st_tier matches 1 run scoreboard players set #st_required ec.var 5
execute if score @s ec.st_tier matches 2 run scoreboard players set #st_required ec.var 6
execute if score @s ec.st_tier matches 3 run scoreboard players set #st_required ec.var 7
execute if score @s ec.st_tier matches 4 run scoreboard players set #st_required ec.var 8
execute if score @s ec.st_tier matches 5 run scoreboard players set #st_required ec.var 9
execute if score @s ec.st_tier matches 6 run scoreboard players set #st_required ec.var 10

# If objectives done >= required → tier up!
execute if score @s ec.st_obj_done >= #st_required ec.var run function evercraft:craftforever/spirit_tools/progression/tier_up
