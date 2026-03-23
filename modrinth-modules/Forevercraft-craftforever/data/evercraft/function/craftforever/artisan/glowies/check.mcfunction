# Crafter Glowies — Determine dominant category and apply glow
# Called when player reaches Artisan Rank 100

# Find highest category XP
scoreboard players operation #cf_max ec.cf_temp = @s ec.cf_axp_mine
scoreboard players set #cf_max_cat ec.cf_temp 0

# Cooking
scoreboard players operation #cf_cmp ec.cf_temp = @s ec.cf_axp_cook
execute if score #cf_cmp ec.cf_temp > #cf_max ec.cf_temp run scoreboard players operation #cf_max ec.cf_temp = #cf_cmp ec.cf_temp
execute if score #cf_cmp ec.cf_temp >= #cf_max ec.cf_temp if score #cf_max_cat ec.cf_temp matches 0 run scoreboard players set #cf_max_cat ec.cf_temp 1

# Fishing
scoreboard players operation #cf_cmp ec.cf_temp = @s ec.cf_axp_fish
execute if score #cf_cmp ec.cf_temp > #cf_max ec.cf_temp run scoreboard players operation #cf_max ec.cf_temp = #cf_cmp ec.cf_temp
execute if score #cf_cmp ec.cf_temp > #cf_max ec.cf_temp run scoreboard players set #cf_max_cat ec.cf_temp 2

# Building
scoreboard players operation #cf_cmp ec.cf_temp = @s ec.cf_axp_build
execute if score #cf_cmp ec.cf_temp > #cf_max ec.cf_temp run scoreboard players operation #cf_max ec.cf_temp = #cf_cmp ec.cf_temp
execute if score #cf_cmp ec.cf_temp > #cf_max ec.cf_temp run scoreboard players set #cf_max_cat ec.cf_temp 3

# Foraging
scoreboard players operation #cf_cmp ec.cf_temp = @s ec.cf_axp_forage
execute if score #cf_cmp ec.cf_temp > #cf_max ec.cf_temp run scoreboard players operation #cf_max ec.cf_temp = #cf_cmp ec.cf_temp
execute if score #cf_cmp ec.cf_temp > #cf_max ec.cf_temp run scoreboard players set #cf_max_cat ec.cf_temp 4

# Forging
scoreboard players operation #cf_cmp ec.cf_temp = @s ec.cf_axp_forge
execute if score #cf_cmp ec.cf_temp > #cf_max ec.cf_temp run scoreboard players operation #cf_max ec.cf_temp = #cf_cmp ec.cf_temp
execute if score #cf_cmp ec.cf_temp > #cf_max ec.cf_temp run scoreboard players set #cf_max_cat ec.cf_temp 5

# Apply glow
function evercraft:craftforever/artisan/glowies/apply
