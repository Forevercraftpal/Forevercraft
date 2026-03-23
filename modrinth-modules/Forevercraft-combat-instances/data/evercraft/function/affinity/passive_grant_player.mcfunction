# === PASSIVE GRANT — 7 XP per event (14 with Twin) ===
scoreboard players set #delta ec.temp 7
execute if score @s ec.aff_twin matches 1 run scoreboard players set #delta ec.temp 14
function evercraft:affinity/internal_grant
