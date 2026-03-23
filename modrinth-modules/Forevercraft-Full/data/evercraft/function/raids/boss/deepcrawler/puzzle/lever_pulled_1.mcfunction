# Deepcrawler — Lever 1 pulled
data remove entity @s interaction
# Lever 1 is correct when sequence position = 1
execute if score #rd_dc_lever_seq ec.var matches 1 run function evercraft:raids/boss/deepcrawler/puzzle/lever_correct
execute unless score #rd_dc_lever_seq ec.var matches 1 run function evercraft:raids/boss/deepcrawler/puzzle/lever_wrong
