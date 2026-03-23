# Guild Diplomacy — Announce event start

# Activity names (10 activities)
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

function evercraft:guild/diplomacy/event/announce_start_final with storage evercraft:guild temp
