# Laborer Registry — Fill one laborer detail line
# Run as: laborer villager entity
# Uses #cf_lb_line ec.temp for which display slot

# --- Determine type icon + label + color ---
data modify storage evercraft:cf_temp lb_icon set value "\u2022"
data modify storage evercraft:cf_temp lb_type set value "Unknown"
data modify storage evercraft:cf_temp lb_color set value "gray"

execute if entity @s[tag=ec.lb_miner] run data modify storage evercraft:cf_temp lb_icon set value "\u26cf"
execute if entity @s[tag=ec.lb_miner] run data modify storage evercraft:cf_temp lb_type set value "Miner"
execute if entity @s[tag=ec.lb_miner] run data modify storage evercraft:cf_temp lb_color set value "#FFB74D"

execute if entity @s[tag=ec.lb_farmer] run data modify storage evercraft:cf_temp lb_icon set value "\u2618"
execute if entity @s[tag=ec.lb_farmer] run data modify storage evercraft:cf_temp lb_type set value "Farmer"
execute if entity @s[tag=ec.lb_farmer] run data modify storage evercraft:cf_temp lb_color set value "#66BB6A"

execute if entity @s[tag=ec.lb_fisher] run data modify storage evercraft:cf_temp lb_icon set value "\u2693"
execute if entity @s[tag=ec.lb_fisher] run data modify storage evercraft:cf_temp lb_type set value "Fisher"
execute if entity @s[tag=ec.lb_fisher] run data modify storage evercraft:cf_temp lb_color set value "#4FC3F7"

execute if entity @s[tag=ec.lb_woodcutter] run data modify storage evercraft:cf_temp lb_icon set value "\u2694"
execute if entity @s[tag=ec.lb_woodcutter] run data modify storage evercraft:cf_temp lb_type set value "Woodcutter"
execute if entity @s[tag=ec.lb_woodcutter] run data modify storage evercraft:cf_temp lb_color set value "#8D6E63"

execute if entity @s[tag=ec.lb_forager] run data modify storage evercraft:cf_temp lb_icon set value "\u2767"
execute if entity @s[tag=ec.lb_forager] run data modify storage evercraft:cf_temp lb_type set value "Forager"
execute if entity @s[tag=ec.lb_forager] run data modify storage evercraft:cf_temp lb_color set value "#9CCC65"

execute if entity @s[tag=ec.lb_prospector] run data modify storage evercraft:cf_temp lb_icon set value "\u2737"
execute if entity @s[tag=ec.lb_prospector] run data modify storage evercraft:cf_temp lb_type set value "Prospector"
execute if entity @s[tag=ec.lb_prospector] run data modify storage evercraft:cf_temp lb_color set value "gold"

# --- Determine state ---
data modify storage evercraft:cf_temp lb_state set value "Idle"
data modify storage evercraft:cf_temp lb_state_color set value "green"
execute if score @s ec.lb_state matches 1 run data modify storage evercraft:cf_temp lb_state set value "Preparing..."
execute if score @s ec.lb_state matches 1 run data modify storage evercraft:cf_temp lb_state_color set value "yellow"
execute if score @s ec.lb_state matches 2 run data modify storage evercraft:cf_temp lb_state set value "On Expedition"
execute if score @s ec.lb_state matches 2 run data modify storage evercraft:cf_temp lb_state_color set value "aqua"
execute if score @s ec.lb_state matches 3 run data modify storage evercraft:cf_temp lb_state set value "\u2605 Returned!"
execute if score @s ec.lb_state matches 3 run data modify storage evercraft:cf_temp lb_state_color set value "gold"

# --- Determine satisfaction ---
data modify storage evercraft:cf_temp lb_fed_label set value "\u2716 Hungry"
data modify storage evercraft:cf_temp lb_fed_color set value "red"
execute if score @s ec.lb_fed matches 1.. run data modify storage evercraft:cf_temp lb_fed_label set value "\u2714 Fed"
execute if score @s ec.lb_fed matches 1.. run data modify storage evercraft:cf_temp lb_fed_color set value "green"

# --- Expedition count ---
execute store result storage evercraft:cf_temp lb_expeditions int 1 run scoreboard players get @s ec.lb_expeditions
execute store result storage evercraft:cf_temp lb_adventures int 1 run scoreboard players get @s ec.lb_adventures

# --- Write slot tag ---
execute if score #cf_lb_line ec.temp matches 0 run data modify storage evercraft:cf_temp lb_slot_tag set value "CF.LbLine1"
execute if score #cf_lb_line ec.temp matches 1 run data modify storage evercraft:cf_temp lb_slot_tag set value "CF.LbLine2"
execute if score #cf_lb_line ec.temp matches 2 run data modify storage evercraft:cf_temp lb_slot_tag set value "CF.LbLine3"
execute if score #cf_lb_line ec.temp matches 3 run data modify storage evercraft:cf_temp lb_slot_tag set value "CF.LbLine4"
execute if score #cf_lb_line ec.temp matches 4 run data modify storage evercraft:cf_temp lb_slot_tag set value "CF.LbLine5"

# Render the detail line
function evercraft:craftforever/codex/hub/laborers/render_line with storage evercraft:cf_temp

# Increment
scoreboard players add #cf_lb_line ec.temp 1
