# === DAILY CAP — Clamp #delta against 1,000,000 remaining ===
# Expects: @s = player, ec.aff_class (1-14), #delta ec.temp
# Modifies: #delta ec.temp (may reduce to 0)

# Get current daily total into #current ec.temp
scoreboard players set #current ec.temp 0
execute if score @s ec.aff_class matches 1 run scoreboard players operation #current ec.temp = @s ec.daff_rg
execute if score @s ec.aff_class matches 2 run scoreboard players operation #current ec.temp = @s ec.daff_bk
execute if score @s ec.aff_class matches 3 run scoreboard players operation #current ec.temp = @s ec.daff_dn
execute if score @s ec.aff_class matches 4 run scoreboard players operation #current ec.temp = @s ec.daff_sk
execute if score @s ec.aff_class matches 5 run scoreboard players operation #current ec.temp = @s ec.daff_kt
execute if score @s ec.aff_class matches 6 run scoreboard players operation #current ec.temp = @s ec.daff_hl
execute if score @s ec.aff_class matches 7 run scoreboard players operation #current ec.temp = @s ec.daff_bl
execute if score @s ec.aff_class matches 8 run scoreboard players operation #current ec.temp = @s ec.daff_jv
execute if score @s ec.aff_class matches 9 run scoreboard players operation #current ec.temp = @s ec.daff_hp
execute if score @s ec.aff_class matches 10 run scoreboard players operation #current ec.temp = @s ec.daff_ar
execute if score @s ec.aff_class matches 11 run scoreboard players operation #current ec.temp = @s ec.daff_ht
execute if score @s ec.aff_class matches 12 run scoreboard players operation #current ec.temp = @s ec.daff_tk
execute if score @s ec.aff_class matches 13 run scoreboard players operation #current ec.temp = @s ec.daff_kn
execute if score @s ec.aff_class matches 14 run scoreboard players operation #current ec.temp = @s ec.daff_ds

# Already capped? Zero delta
execute if score #current ec.temp matches 1000000.. run scoreboard players set #delta ec.temp 0
execute if score #current ec.temp matches 1000000.. run return 0

# Remaining = 1000000 - current
scoreboard players set #remaining ec.temp 1000000
scoreboard players operation #remaining ec.temp -= #current ec.temp

# If delta > remaining, clamp
execute if score #delta ec.temp > #remaining ec.temp run scoreboard players operation #delta ec.temp = #remaining ec.temp
