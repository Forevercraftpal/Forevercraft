# === CRAFTING AFFINITY — APPLY HASTE BONUS ===
# Upgrades Haste effect level based on affinity boost %
# Run as/at player holding spirit tool. Haste already applied at base level.
# boost 0-4% = no upgrade, 5-9% = Haste IV, 10-14% = Haste V, 15-20% = Haste VI

execute if score @s ec.caff_boost matches 5..9 if score #st_effect_cd ec.var matches 0 run effect give @s haste 3 3 true
execute if score @s ec.caff_boost matches 10..14 if score #st_effect_cd ec.var matches 0 run effect give @s haste 3 4 true
execute if score @s ec.caff_boost matches 15.. if score #st_effect_cd ec.var matches 0 run effect give @s haste 3 5 true
