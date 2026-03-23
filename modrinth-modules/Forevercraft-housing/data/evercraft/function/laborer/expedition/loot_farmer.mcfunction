# Farmer loot dispatch by quality tier
execute if score #lb_qtier ec.lb_temp matches 0 run loot give @p loot evercraft:laborer/expedition/farmer/meager
execute if score #lb_qtier ec.lb_temp matches 1 run loot give @p loot evercraft:laborer/expedition/farmer/decent
execute if score #lb_qtier ec.lb_temp matches 2 run loot give @p loot evercraft:laborer/expedition/farmer/bountiful
execute if score #lb_qtier ec.lb_temp matches 3 run loot give @p loot evercraft:laborer/expedition/farmer/abundant
execute if score #lb_qtier ec.lb_temp matches 4 run loot give @p loot evercraft:laborer/expedition/farmer/legendary
