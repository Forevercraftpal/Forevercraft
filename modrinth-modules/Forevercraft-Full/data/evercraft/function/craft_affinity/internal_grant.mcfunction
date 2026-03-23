# === CRAFTING AFFINITY — INTERNAL GRANT ===
# Expects: @s = player, ec.caff_class (1-6), #delta ec.temp
# Does: daily cap → add to total + daily → update stage

# Skip if delta is 0 or negative
execute unless score #delta ec.temp matches 1.. run return 0

# Apply daily cap
function evercraft:craft_affinity/daily_cap

# Skip if capped to 0
execute unless score #delta ec.temp matches 1.. run return 0

# Add delta to correct class total + daily
execute if score @s ec.caff_class matches 1 run scoreboard players operation @s ec.caff_ss += #delta ec.temp
execute if score @s ec.caff_class matches 1 run scoreboard players operation @s ec.cdaff_ss += #delta ec.temp
execute if score @s ec.caff_class matches 2 run scoreboard players operation @s ec.caff_lf += #delta ec.temp
execute if score @s ec.caff_class matches 2 run scoreboard players operation @s ec.cdaff_lf += #delta ec.temp
execute if score @s ec.caff_class matches 3 run scoreboard players operation @s ec.caff_gs += #delta ec.temp
execute if score @s ec.caff_class matches 3 run scoreboard players operation @s ec.cdaff_gs += #delta ec.temp
execute if score @s ec.caff_class matches 4 run scoreboard players operation @s ec.caff_tw += #delta ec.temp
execute if score @s ec.caff_class matches 4 run scoreboard players operation @s ec.cdaff_tw += #delta ec.temp
execute if score @s ec.caff_class matches 5 run scoreboard players operation @s ec.caff_sc += #delta ec.temp
execute if score @s ec.caff_class matches 5 run scoreboard players operation @s ec.cdaff_sc += #delta ec.temp
execute if score @s ec.caff_class matches 6 run scoreboard players operation @s ec.caff_lm += #delta ec.temp
execute if score @s ec.caff_class matches 6 run scoreboard players operation @s ec.cdaff_lm += #delta ec.temp

# Update stage & boost
function evercraft:craft_affinity/update_stage

# Cross-feed: Class affinity XP → Artisan rank XP
# Guard against recursion (artisan level_up → internal_grant → add_xp → level_up...)
execute if entity @s[tag=ec.caff_xfeed] run return 0
tag @s add ec.caff_xfeed
# Maps class ID → artisan category (1=Mining, 2=Foraging, 3=Foraging, 4=Mining, 5=Fishing, 6=Foraging)
scoreboard players operation #cf_xp_amount ec.cf_temp = #delta ec.temp
execute if score @s ec.caff_class matches 1 run scoreboard players set #cf_xp_cat ec.cf_temp 0
execute if score @s ec.caff_class matches 2 run scoreboard players set #cf_xp_cat ec.cf_temp 4
execute if score @s ec.caff_class matches 3 run scoreboard players set #cf_xp_cat ec.cf_temp 4
execute if score @s ec.caff_class matches 4 run scoreboard players set #cf_xp_cat ec.cf_temp 0
execute if score @s ec.caff_class matches 5 run scoreboard players set #cf_xp_cat ec.cf_temp 2
execute if score @s ec.caff_class matches 6 run scoreboard players set #cf_xp_cat ec.cf_temp 4
function evercraft:craftforever/artisan/add_xp
tag @s remove ec.caff_xfeed
