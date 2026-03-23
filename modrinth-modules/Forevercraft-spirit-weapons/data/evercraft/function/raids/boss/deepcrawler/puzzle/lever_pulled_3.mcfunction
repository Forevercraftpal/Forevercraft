# Deepcrawler — Lever 3 pulled
data remove entity @s interaction
execute if score #rd_dc_lever_seq ec.var matches 3 run function evercraft:raids/boss/deepcrawler/puzzle/lever_correct
execute unless score #rd_dc_lever_seq ec.var matches 3 run function evercraft:raids/boss/deepcrawler/puzzle/lever_wrong
