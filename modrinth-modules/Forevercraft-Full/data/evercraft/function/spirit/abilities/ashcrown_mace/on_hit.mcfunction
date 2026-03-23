# Ashcrown Mace — On Hit Processing
# Handles: Shield Charge accumulation, charge burst at 100 (spirit: 150)

advancement revoke @s only evercraft:spirit/ashcrown_mace/on_hit

# === SHIELD CHARGE ACCUMULATION ===
# Each hit adds shield charges
scoreboard players add @s ec.sp_shield_charge 1

# === CHARGE BURST CHECK ===
# Normal: burst at 100 charges, Spirit: burst at 150 charges
# Burst: Resistance III for 5s + AoE knockback + damage

# Spirit tier burst (150 charges)
execute if score @s ec.sp_tier matches 7 if score @s ec.sp_shield_charge matches 150.. at @s run function evercraft:spirit/abilities/ashcrown_mace/shield_burst
execute if score @s ec.sp_tier matches 7 if score @s ec.sp_shield_charge matches 150.. run scoreboard players set @s ec.sp_shield_charge 0

# Normal tier burst (100 charges)
execute unless score @s ec.sp_tier matches 7 if score @s ec.sp_shield_charge matches 100.. at @s run function evercraft:spirit/abilities/ashcrown_mace/shield_burst
execute unless score @s ec.sp_tier matches 7 if score @s ec.sp_shield_charge matches 100.. run scoreboard players set @s ec.sp_shield_charge 0

# === KILL & PROGRESSION TRACKING ===
scoreboard players add @s ec.sp_kills 1
scoreboard players add @s ec.sp_damage_blocked 1
function evercraft:spirit/progression/track_on_hit
