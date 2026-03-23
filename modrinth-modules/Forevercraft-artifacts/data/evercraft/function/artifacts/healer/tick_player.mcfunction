# Healer Artifacts — Per-player cooldown + lockout update
# OPT: Consolidates 24 @a scans into 1 per-player function call

# === COOLDOWN DECREMENTS ===
execute if score @s ec.hl_bandage matches 1.. run scoreboard players remove @s ec.hl_bandage 1
execute if score @s ec.hl_poultice matches 1.. run scoreboard players remove @s ec.hl_poultice 1
execute if score @s ec.hl_salts matches 1.. run scoreboard players remove @s ec.hl_salts 1
execute if score @s ec.hl_balm matches 1.. run scoreboard players remove @s ec.hl_balm 1
execute if score @s ec.hl_chalice matches 1.. run scoreboard players remove @s ec.hl_chalice 1
execute if score @s ec.hl_incense matches 1.. run scoreboard players remove @s ec.hl_incense 1
execute if score @s ec.hl_plume matches 1.. run scoreboard players remove @s ec.hl_plume 1
execute if score @s ec.hl_censer matches 1.. run scoreboard players remove @s ec.hl_censer 1
execute if score @s ec.hl_lotus matches 1.. run scoreboard players remove @s ec.hl_lotus 1
execute if score @s ec.hl_tome matches 1.. run scoreboard players remove @s ec.hl_tome 1
execute if score @s ec.hl_ambrosia matches 1.. run scoreboard players remove @s ec.hl_ambrosia 1
execute if score @s ec.hl_tears matches 1.. run scoreboard players remove @s ec.hl_tears 1

# === UPDATE LOCKOUT FLAG ===
# Reset to 0, then set to 1 if any CD still active
scoreboard players set @s ec.hl_locked 0
execute if score @s ec.hl_bandage matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_poultice matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_salts matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_balm matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_chalice matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_incense matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_plume matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_censer matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_lotus matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_tome matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_ambrosia matches 1.. run scoreboard players set @s ec.hl_locked 1
execute if score @s ec.hl_tears matches 1.. run scoreboard players set @s ec.hl_locked 1
