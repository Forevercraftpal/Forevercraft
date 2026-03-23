# Trade Trial — Category Mastery Announcement
# Run as/at: player who just completed T10 for the first time in a category

# Determine category name for announcement
execute if score @s ec.tt_type matches 1 run data modify storage evercraft:trials mastery_name set value "Mining"
execute if score @s ec.tt_type matches 2 run data modify storage evercraft:trials mastery_name set value "Farming"
execute if score @s ec.tt_type matches 3 run data modify storage evercraft:trials mastery_name set value "Fishing"
execute if score @s ec.tt_type matches 4 run data modify storage evercraft:trials mastery_name set value "Building"
execute if score @s ec.tt_type matches 5 run data modify storage evercraft:trials mastery_name set value "Lumber"
execute if score @s ec.tt_type matches 6 run data modify storage evercraft:trials mastery_name set value "Artisan"

# Determine mastery title
execute if score @s ec.tt_type matches 1 run data modify storage evercraft:trials mastery_title set value "Master Miner"
execute if score @s ec.tt_type matches 2 run data modify storage evercraft:trials mastery_title set value "Harvest Lord"
execute if score @s ec.tt_type matches 3 run data modify storage evercraft:trials mastery_title set value "Master Angler"
execute if score @s ec.tt_type matches 4 run data modify storage evercraft:trials mastery_title set value "Grand Architect"
execute if score @s ec.tt_type matches 5 run data modify storage evercraft:trials mastery_title set value "Lumberjack Legend"
execute if score @s ec.tt_type matches 6 run data modify storage evercraft:trials mastery_title set value "Artisan Supreme"

# Epic announcement to all players
function evercraft:craftforever/trials/mastery_announce_msg with storage evercraft:trials

# Extra effects for the player
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.5 2.0
particle minecraft:totem_of_undying ~ ~1 ~ 2 2 2 0.5 200
particle minecraft:end_rod ~ ~1 ~ 1 1 1 0.1 50

# Grand Master check (all 6 mastered)
execute if score @s ec.tt_mastery matches 6 run function evercraft:craftforever/trials/grand_master_announce
