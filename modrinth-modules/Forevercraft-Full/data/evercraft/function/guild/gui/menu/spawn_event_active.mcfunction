# Guild Menu — Event page: Active event
# @s = player with menu open

# Resolve activity name to storage
execute if score #gd_event_activity ec.var matches 1 run data modify storage evercraft:guild temp.activity_name set value "Fishing Derby"
execute if score #gd_event_activity ec.var matches 2 run data modify storage evercraft:guild temp.activity_name set value "Mining Crates"
execute if score #gd_event_activity ec.var matches 3 run data modify storage evercraft:guild temp.activity_name set value "Diamond Mining"
execute if score #gd_event_activity ec.var matches 4 run data modify storage evercraft:guild temp.activity_name set value "Patron Slaying"
execute if score #gd_event_activity ec.var matches 5 run data modify storage evercraft:guild temp.activity_name set value "Crop Harvesting"
execute if score #gd_event_activity ec.var matches 6 run data modify storage evercraft:guild temp.activity_name set value "Gather Nodes"
execute if score #gd_event_activity ec.var matches 7 run data modify storage evercraft:guild temp.activity_name set value "Mining Nodes"
execute if score #gd_event_activity ec.var matches 8 run data modify storage evercraft:guild temp.activity_name set value "Lore Discovery"
execute if score #gd_event_activity ec.var matches 9 run data modify storage evercraft:guild temp.activity_name set value "Mob Kills"
execute if score #gd_event_activity ec.var matches 10 run data modify storage evercraft:guild temp.activity_name set value "Harvest Crates"

# Event type name
execute if score #gd_event_type ec.var matches 1 run data modify storage evercraft:guild temp.event_type_name set value "Competition"
execute if score #gd_event_type ec.var matches 2 run data modify storage evercraft:guild temp.event_type_name set value "Pillage"

# Store scores to temp
execute store result storage evercraft:guild temp.score_a int 1 run scoreboard players get #gd_score_a ec.var
execute store result storage evercraft:guild temp.score_b int 1 run scoreboard players get #gd_score_b ec.var

# Spawn rows via macro
function evercraft:guild/gui/menu/spawn_event_rows with storage evercraft:guild event
