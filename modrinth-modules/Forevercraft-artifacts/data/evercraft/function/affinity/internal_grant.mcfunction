# === INTERNAL GRANT — CORE LOGIC ===
# Expects: @s = player, ec.aff_class set (1-14), #delta ec.temp set
# Does: daily cap check → add to total + daily → update stage

# Skip if delta is 0 or negative
execute unless score #delta ec.temp matches 1.. run return 0

# Apply daily cap (skipped for spirit weapon holders)
execute unless score @s ec.aff_spirit matches 1 run function evercraft:affinity/daily_cap

# Skip if delta capped to 0
execute unless score #delta ec.temp matches 1.. run return 0

# Add delta to correct class total + daily
execute if score @s ec.aff_class matches 1 run scoreboard players operation @s ec.aff_rg += #delta ec.temp
execute if score @s ec.aff_class matches 1 run scoreboard players operation @s ec.daff_rg += #delta ec.temp
execute if score @s ec.aff_class matches 2 run scoreboard players operation @s ec.aff_bk += #delta ec.temp
execute if score @s ec.aff_class matches 2 run scoreboard players operation @s ec.daff_bk += #delta ec.temp
execute if score @s ec.aff_class matches 3 run scoreboard players operation @s ec.aff_dn += #delta ec.temp
execute if score @s ec.aff_class matches 3 run scoreboard players operation @s ec.daff_dn += #delta ec.temp
execute if score @s ec.aff_class matches 4 run scoreboard players operation @s ec.aff_sk += #delta ec.temp
execute if score @s ec.aff_class matches 4 run scoreboard players operation @s ec.daff_sk += #delta ec.temp
execute if score @s ec.aff_class matches 5 run scoreboard players operation @s ec.aff_kt += #delta ec.temp
execute if score @s ec.aff_class matches 5 run scoreboard players operation @s ec.daff_kt += #delta ec.temp
execute if score @s ec.aff_class matches 6 run scoreboard players operation @s ec.aff_hl += #delta ec.temp
execute if score @s ec.aff_class matches 6 run scoreboard players operation @s ec.daff_hl += #delta ec.temp
execute if score @s ec.aff_class matches 7 run scoreboard players operation @s ec.aff_bl += #delta ec.temp
execute if score @s ec.aff_class matches 7 run scoreboard players operation @s ec.daff_bl += #delta ec.temp
execute if score @s ec.aff_class matches 8 run scoreboard players operation @s ec.aff_jv += #delta ec.temp
execute if score @s ec.aff_class matches 8 run scoreboard players operation @s ec.daff_jv += #delta ec.temp
execute if score @s ec.aff_class matches 9 run scoreboard players operation @s ec.aff_hp += #delta ec.temp
execute if score @s ec.aff_class matches 9 run scoreboard players operation @s ec.daff_hp += #delta ec.temp
execute if score @s ec.aff_class matches 10 run scoreboard players operation @s ec.aff_ar += #delta ec.temp
execute if score @s ec.aff_class matches 10 run scoreboard players operation @s ec.daff_ar += #delta ec.temp
execute if score @s ec.aff_class matches 11 run scoreboard players operation @s ec.aff_ht += #delta ec.temp
execute if score @s ec.aff_class matches 11 run scoreboard players operation @s ec.daff_ht += #delta ec.temp
execute if score @s ec.aff_class matches 12 run scoreboard players operation @s ec.aff_tk += #delta ec.temp
execute if score @s ec.aff_class matches 12 run scoreboard players operation @s ec.daff_tk += #delta ec.temp
execute if score @s ec.aff_class matches 13 run scoreboard players operation @s ec.aff_kn += #delta ec.temp
execute if score @s ec.aff_class matches 13 run scoreboard players operation @s ec.daff_kn += #delta ec.temp
execute if score @s ec.aff_class matches 14 run scoreboard players operation @s ec.aff_ds += #delta ec.temp
execute if score @s ec.aff_class matches 14 run scoreboard players operation @s ec.daff_ds += #delta ec.temp

# Update stage & boost
function evercraft:affinity/update_stage
