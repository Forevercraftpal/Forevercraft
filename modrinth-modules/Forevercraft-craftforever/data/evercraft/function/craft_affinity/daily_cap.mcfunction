# === CRAFTING AFFINITY — DAILY CAP (1,000,000 per class per day) ===
# Expects: @s = player, ec.caff_class (1-6), #delta ec.temp

# Get current daily total
scoreboard players set #current ec.temp 0
execute if score @s ec.caff_class matches 1 run scoreboard players operation #current ec.temp = @s ec.cdaff_ss
execute if score @s ec.caff_class matches 2 run scoreboard players operation #current ec.temp = @s ec.cdaff_lf
execute if score @s ec.caff_class matches 3 run scoreboard players operation #current ec.temp = @s ec.cdaff_gs
execute if score @s ec.caff_class matches 4 run scoreboard players operation #current ec.temp = @s ec.cdaff_tw
execute if score @s ec.caff_class matches 5 run scoreboard players operation #current ec.temp = @s ec.cdaff_sc
execute if score @s ec.caff_class matches 6 run scoreboard players operation #current ec.temp = @s ec.cdaff_lm

# Already capped?
execute if score #current ec.temp matches 1000000.. run scoreboard players set #delta ec.temp 0
execute if score #current ec.temp matches 1000000.. run return 0

# Remaining = cap - current
scoreboard players set #remaining ec.temp 1000000
scoreboard players operation #remaining ec.temp -= #current ec.temp

# Clamp delta if over remaining
execute if score #delta ec.temp > #remaining ec.temp run scoreboard players operation #delta ec.temp = #remaining ec.temp
