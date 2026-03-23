# ============================================================
# Show one active laborer on the GUI list
# Run as: laborer villager entity
# Uses #lb_line ec.temp to know which display slot (0-4)
# ============================================================

# Determine type label + color
data modify storage evercraft:lb_temp type_label set value "Unknown"
data modify storage evercraft:lb_temp type_color set value "gray"
execute if entity @s[tag=ec.lb_miner] run data modify storage evercraft:lb_temp type_label set value "Miner"
execute if entity @s[tag=ec.lb_miner] run data modify storage evercraft:lb_temp type_color set value "#FFB74D"
execute if entity @s[tag=ec.lb_farmer] run data modify storage evercraft:lb_temp type_label set value "Farmer"
execute if entity @s[tag=ec.lb_farmer] run data modify storage evercraft:lb_temp type_color set value "#66BB6A"
execute if entity @s[tag=ec.lb_fisher] run data modify storage evercraft:lb_temp type_label set value "Fisher"
execute if entity @s[tag=ec.lb_fisher] run data modify storage evercraft:lb_temp type_color set value "#4FC3F7"
execute if entity @s[tag=ec.lb_woodcutter] run data modify storage evercraft:lb_temp type_label set value "Woodcutter"
execute if entity @s[tag=ec.lb_woodcutter] run data modify storage evercraft:lb_temp type_color set value "#8D6E63"
execute if entity @s[tag=ec.lb_forager] run data modify storage evercraft:lb_temp type_label set value "Forager"
execute if entity @s[tag=ec.lb_forager] run data modify storage evercraft:lb_temp type_color set value "#9CCC65"
execute if entity @s[tag=ec.lb_prospector] run data modify storage evercraft:lb_temp type_label set value "Prospector"
execute if entity @s[tag=ec.lb_prospector] run data modify storage evercraft:lb_temp type_color set value "gold"

# Determine state label + color
data modify storage evercraft:lb_temp state_label set value "Idle"
data modify storage evercraft:lb_temp state_color set value "green"
execute if score @s ec.lb_state matches 1 run data modify storage evercraft:lb_temp state_label set value "Preparing"
execute if score @s ec.lb_state matches 1 run data modify storage evercraft:lb_temp state_color set value "yellow"
execute if score @s ec.lb_state matches 2 run data modify storage evercraft:lb_temp state_label set value "On Expedition"
execute if score @s ec.lb_state matches 2 run data modify storage evercraft:lb_temp state_color set value "aqua"
execute if score @s ec.lb_state matches 3 run data modify storage evercraft:lb_temp state_label set value "Returned!"
execute if score @s ec.lb_state matches 3 run data modify storage evercraft:lb_temp state_color set value "gold"

# Write slot tag to storage so all macro args come from one source
execute if score #lb_line ec.temp matches 0 run data modify storage evercraft:lb_temp slot set value "HS.LbActive1"
execute if score #lb_line ec.temp matches 1 run data modify storage evercraft:lb_temp slot set value "HS.LbActive2"
execute if score #lb_line ec.temp matches 2 run data modify storage evercraft:lb_temp slot set value "HS.LbActive3"
execute if score #lb_line ec.temp matches 3 run data modify storage evercraft:lb_temp slot set value "HS.LbActive4"
execute if score #lb_line ec.temp matches 4 run data modify storage evercraft:lb_temp slot set value "HS.LbActive5"

# Render the line
function evercraft:housing/laborers/set_active_line with storage evercraft:lb_temp

# Increment line counter
scoreboard players add #lb_line ec.temp 1
