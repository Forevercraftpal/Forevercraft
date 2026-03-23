# Spirit Tome — Snapshot current stat value for delta tracking (type 1 quests)
# Subtype determines which stat to snapshot

# Mob kills
execute if score @s ec.sq_sub matches 1 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_mkills
# Walk distance (cm)
execute if score @s ec.sq_sub matches 2 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_walk
# Jump count
execute if score @s ec.sq_sub matches 3 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_jump
# Swim distance (cm)
execute if score @s ec.sq_sub matches 4 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_swim
# Sprint distance (cm)
execute if score @s ec.sq_sub matches 5 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_sprint
# Fish caught
execute if score @s ec.sq_sub matches 6 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_fish
# Stone mined (stone + deepslate combined)
execute if score @s ec.sq_sub matches 7 run function evercraft:spirit_tome/quests/snap_stone
# Iron ore mined (iron + deepslate combined)
execute if score @s ec.sq_sub matches 8 run function evercraft:spirit_tome/quests/snap_iron
# Diamond ore mined (diamond + deepslate combined)
execute if score @s ec.sq_sub matches 9 run function evercraft:spirit_tome/quests/snap_diamond
# Chicken kills
execute if score @s ec.sq_sub matches 10 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_kill_chicken
# Enderman kills
execute if score @s ec.sq_sub matches 11 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_kill_enderman
# Shears used
execute if score @s ec.sq_sub matches 12 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_use_shears
# Torches placed
execute if score @s ec.sq_sub matches 13 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_use_torch
# Trident throws
execute if score @s ec.sq_sub matches 14 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_trident
# Smelting
execute if score @s ec.sq_sub matches 15 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_smelt
# Anvil use
execute if score @s ec.sq_sub matches 16 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_use_anvil
# Crops harvested
execute if score @s ec.sq_sub matches 17 store result score @s ec.sq_snap run scoreboard players get @s ach.crops_harvested
# Food eaten
execute if score @s ec.sq_sub matches 18 store result score @s ec.sq_snap run scoreboard players get @s ach.food_eaten
