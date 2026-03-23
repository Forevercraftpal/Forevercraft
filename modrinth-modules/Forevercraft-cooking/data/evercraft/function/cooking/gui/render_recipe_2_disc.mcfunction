# Discovery-aware render wrapper for 2-ingredient recipes
# Checks if recipe is discovered, hides name if not, then renders

# Convert string r_slot to slot number
execute if data storage evercraft:cooking {r_slot:"0"} run scoreboard players set #ck_slot_num ec.temp 0
execute if data storage evercraft:cooking {r_slot:"1"} run scoreboard players set #ck_slot_num ec.temp 1
execute if data storage evercraft:cooking {r_slot:"2"} run scoreboard players set #ck_slot_num ec.temp 2
execute if data storage evercraft:cooking {r_slot:"3"} run scoreboard players set #ck_slot_num ec.temp 3
execute if data storage evercraft:cooking {r_slot:"4"} run scoreboard players set #ck_slot_num ec.temp 4
execute if data storage evercraft:cooking {r_slot:"5"} run scoreboard players set #ck_slot_num ec.temp 5

# Check discovery state
function evercraft:cooking/discovery/check_slot

# Override display if not yet discovered
execute if score #ck_disc ec.temp matches 0 run data modify storage evercraft:cooking r_name set value "???"
execute if score #ck_disc ec.temp matches 0 run data modify storage evercraft:cooking r_tier_color set value "dark_gray"

# Render
function evercraft:cooking/gui/render_recipe_2 with storage evercraft:cooking
