# Prospector loot dispatch by quality tier
execute if score #lb_qtier ec.lb_temp matches 0 run loot give @p loot evercraft:laborer/expedition/prospector/meager
execute if score #lb_qtier ec.lb_temp matches 1 run loot give @p loot evercraft:laborer/expedition/prospector/decent
execute if score #lb_qtier ec.lb_temp matches 2 run loot give @p loot evercraft:laborer/expedition/prospector/bountiful
execute if score #lb_qtier ec.lb_temp matches 3 run loot give @p loot evercraft:laborer/expedition/prospector/abundant
execute if score #lb_qtier ec.lb_temp matches 4 run loot give @p loot evercraft:laborer/expedition/prospector/legendary
