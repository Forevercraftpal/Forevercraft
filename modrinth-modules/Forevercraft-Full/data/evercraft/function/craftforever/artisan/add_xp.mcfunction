# Artisan XP — Award XP to player
# Caller sets: #cf_xp_amount ec.cf_temp (amount) and #cf_xp_cat ec.cf_temp (category 0-5)
# Categories: 0=Mining, 1=Cooking, 2=Fishing, 3=Building, 4=Foraging, 5=Forging

# Add to total XP
scoreboard players operation @s ec.cf_xp += #cf_xp_amount ec.cf_temp

# Add to category
execute if score #cf_xp_cat ec.cf_temp matches 0 run scoreboard players operation @s ec.cf_axp_mine += #cf_xp_amount ec.cf_temp
execute if score #cf_xp_cat ec.cf_temp matches 1 run scoreboard players operation @s ec.cf_axp_cook += #cf_xp_amount ec.cf_temp
execute if score #cf_xp_cat ec.cf_temp matches 2 run scoreboard players operation @s ec.cf_axp_fish += #cf_xp_amount ec.cf_temp
execute if score #cf_xp_cat ec.cf_temp matches 3 run scoreboard players operation @s ec.cf_axp_build += #cf_xp_amount ec.cf_temp
execute if score #cf_xp_cat ec.cf_temp matches 4 run scoreboard players operation @s ec.cf_axp_forage += #cf_xp_amount ec.cf_temp
execute if score #cf_xp_cat ec.cf_temp matches 5 run scoreboard players operation @s ec.cf_axp_forge += #cf_xp_amount ec.cf_temp

# Check for level up
function evercraft:craftforever/artisan/check_levelup
