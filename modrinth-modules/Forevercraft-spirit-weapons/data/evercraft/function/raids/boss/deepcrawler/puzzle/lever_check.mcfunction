# The Deepcrawler — Lever Check
# Checks if any lever was clicked and validates against the expected sequence position

# Check each lever for clicks
execute as @e[tag=ec.rd_dc_lever1] if data entity @s interaction at @s run function evercraft:raids/boss/deepcrawler/puzzle/lever_pulled_1
execute as @e[tag=ec.rd_dc_lever2] if data entity @s interaction at @s run function evercraft:raids/boss/deepcrawler/puzzle/lever_pulled_2
execute as @e[tag=ec.rd_dc_lever3] if data entity @s interaction at @s run function evercraft:raids/boss/deepcrawler/puzzle/lever_pulled_3
execute as @e[tag=ec.rd_dc_lever4] if data entity @s interaction at @s run function evercraft:raids/boss/deepcrawler/puzzle/lever_pulled_4
