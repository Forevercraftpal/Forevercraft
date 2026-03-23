# Woodcutter loot dispatch by quality tier
execute if score #lb_qtier ec.lb_temp matches 0 run loot give @p loot evercraft:laborer/expedition/woodcutter/meager
execute if score #lb_qtier ec.lb_temp matches 1 run loot give @p loot evercraft:laborer/expedition/woodcutter/decent
execute if score #lb_qtier ec.lb_temp matches 2 run loot give @p loot evercraft:laborer/expedition/woodcutter/bountiful
execute if score #lb_qtier ec.lb_temp matches 3 run loot give @p loot evercraft:laborer/expedition/woodcutter/abundant
execute if score #lb_qtier ec.lb_temp matches 4 run loot give @p loot evercraft:laborer/expedition/woodcutter/legendary
