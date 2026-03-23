# Dungeon Lockout — Map struct_id to display name
# Input: #dg_struct_id ec.var
# Output: storage evercraft:dungeon lockout.struct_name

execute if score #dg_struct_id ec.var matches 1 run data modify storage evercraft:dungeon lockout.struct_name set value "Ancient City"
execute if score #dg_struct_id ec.var matches 2 run data modify storage evercraft:dungeon lockout.struct_name set value "End City"
execute if score #dg_struct_id ec.var matches 3 run data modify storage evercraft:dungeon lockout.struct_name set value "Trial Chambers"
execute if score #dg_struct_id ec.var matches 4 run data modify storage evercraft:dungeon lockout.struct_name set value "Stronghold"
execute if score #dg_struct_id ec.var matches 5 run data modify storage evercraft:dungeon lockout.struct_name set value "Woodland Mansion"
execute if score #dg_struct_id ec.var matches 6 run data modify storage evercraft:dungeon lockout.struct_name set value "Bastion Remnant"
execute if score #dg_struct_id ec.var matches 7 run data modify storage evercraft:dungeon lockout.struct_name set value "Nether Fortress"
execute if score #dg_struct_id ec.var matches 8 run data modify storage evercraft:dungeon lockout.struct_name set value "Ocean Monument"
execute if score #dg_struct_id ec.var matches 9 run data modify storage evercraft:dungeon lockout.struct_name set value "Desert Pyramid"
execute if score #dg_struct_id ec.var matches 10 run data modify storage evercraft:dungeon lockout.struct_name set value "Jungle Pyramid"
execute if score #dg_struct_id ec.var matches 11 run data modify storage evercraft:dungeon lockout.struct_name set value "Shipwreck"
execute if score #dg_struct_id ec.var matches 12 run data modify storage evercraft:dungeon lockout.struct_name set value "Ocean Ruin"
execute if score #dg_struct_id ec.var matches 13 run data modify storage evercraft:dungeon lockout.struct_name set value "Igloo"
execute if score #dg_struct_id ec.var matches 14 run data modify storage evercraft:dungeon lockout.struct_name set value "Pillager Outpost"
execute if score #dg_struct_id ec.var matches 17 run data modify storage evercraft:dungeon lockout.struct_name set value "Mineshaft"
execute if score #dg_struct_id ec.var matches 18 run data modify storage evercraft:dungeon lockout.struct_name set value "Ruined Portal"
execute if score #dg_struct_id ec.var matches 19 run data modify storage evercraft:dungeon lockout.struct_name set value "Swamp Hut"
execute if score #dg_struct_id ec.var matches 20 run data modify storage evercraft:dungeon lockout.struct_name set value "Village Defense"
