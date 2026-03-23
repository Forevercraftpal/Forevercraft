# ============================================================
# Campfire Kitchen GUI — Refresh Recipe Displays
# Runs as the player
# Updates all 6 recipe name + ingredient displays for current category
# ============================================================

# Initialize recipe discovery for new players
execute unless score @s ck.disc_init matches 1 run function evercraft:cooking/discovery/init

execute if score @s ec.ck_cat matches 0 run function evercraft:cooking/gui/refresh_combat
execute if score @s ec.ck_cat matches 1 run function evercraft:cooking/gui/refresh_mining
execute if score @s ec.ck_cat matches 2 run function evercraft:cooking/gui/refresh_fortune
execute if score @s ec.ck_cat matches 3 run function evercraft:cooking/gui/refresh_wayfarer
execute if score @s ec.ck_cat matches 4 run function evercraft:cooking/gui/refresh_delicacy
execute if score @s ec.ck_cat matches 5 run function evercraft:cooking/gui/refresh_seasonal
execute if score @s ec.ck_cat matches 6 run function evercraft:cooking/gui/refresh_treats
execute if score @s ec.ck_cat matches 7 run function evercraft:cooking/gui/refresh_rations
execute if score @s ec.ck_cat matches 8 run function evercraft:cooking/gui/refresh_feast_platter
execute if score @s ec.ck_cat matches 9 run function evercraft:cooking/gui/refresh_preservation
execute if score @s ec.ck_cat matches 10 run function evercraft:cooking/gui/refresh_spirit
