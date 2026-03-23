# Miner loot dispatch by quality tier
# #lb_qtier: 0=meager, 1=decent, 2=bountiful, 3=abundant, 4=legendary
execute if score #lb_qtier ec.lb_temp matches 0 run loot give @p loot evercraft:laborer/expedition/miner/meager
execute if score #lb_qtier ec.lb_temp matches 1 run loot give @p loot evercraft:laborer/expedition/miner/decent
execute if score #lb_qtier ec.lb_temp matches 2 run loot give @p loot evercraft:laborer/expedition/miner/bountiful
execute if score #lb_qtier ec.lb_temp matches 3 run loot give @p loot evercraft:laborer/expedition/miner/abundant
execute if score #lb_qtier ec.lb_temp matches 4 run loot give @p loot evercraft:laborer/expedition/miner/legendary
