# Rogue — Deactivate (player swapped away from dagger)
# OPT: Consolidates 4 @a scans into 1 function call
scoreboard players set @s ec.rg_swing 0
scoreboard players set @s ec.rg_tier 0
scoreboard players set @s ec.rg_dual 0
tag @s remove ec.rg_active
