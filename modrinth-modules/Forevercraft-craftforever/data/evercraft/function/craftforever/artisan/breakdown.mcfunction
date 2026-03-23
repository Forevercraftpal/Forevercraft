# Artisan Rank — Breakdown display
# Shows rank, category XP breakdown, progress to next level

# Store all values to storage for macro display
execute store result storage evercraft:craftforever info.rank int 1 run scoreboard players get @s ec.cf_rank
execute store result storage evercraft:craftforever info.xp int 1 run scoreboard players get @s ec.cf_xp
execute store result storage evercraft:craftforever info.next int 1 run scoreboard players get @s ec.cf_xp_next
execute store result storage evercraft:craftforever info.mining int 1 run scoreboard players get @s ec.cf_axp_mine
execute store result storage evercraft:craftforever info.cooking int 1 run scoreboard players get @s ec.cf_axp_cook
execute store result storage evercraft:craftforever info.fishing int 1 run scoreboard players get @s ec.cf_axp_fish
execute store result storage evercraft:craftforever info.building int 1 run scoreboard players get @s ec.cf_axp_build
execute store result storage evercraft:craftforever info.foraging int 1 run scoreboard players get @s ec.cf_axp_forage
execute store result storage evercraft:craftforever info.forging int 1 run scoreboard players get @s ec.cf_axp_forge
function evercraft:craftforever/artisan/breakdown_display with storage evercraft:craftforever info
