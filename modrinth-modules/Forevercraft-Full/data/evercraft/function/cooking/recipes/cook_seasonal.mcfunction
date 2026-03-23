# ============================================================
# Cook Seasonal Recipes — Dispatcher
# Routes to current season's recipe set
# #ck_slot = recipe slot (0-3), #ck_ok = ingredient check
# ============================================================

# Seasonal only has 4 recipes (0-3) — reject slots 4-5
execute if score #ck_slot ec.temp matches 4.. run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4.. run return 0

# Dispatch to current season
execute if score #season_id ec.var matches 0 run function evercraft:cooking/recipes/cook_autumn
execute if score #season_id ec.var matches 1 run function evercraft:cooking/recipes/cook_winter
execute if score #season_id ec.var matches 2 run function evercraft:cooking/recipes/cook_spring
execute if score #season_id ec.var matches 3 run function evercraft:cooking/recipes/cook_summer
