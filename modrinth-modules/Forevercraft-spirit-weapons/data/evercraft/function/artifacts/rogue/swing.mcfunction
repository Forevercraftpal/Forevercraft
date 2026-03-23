# Rogue Auto-Swing — Cone Targeting + Damage + Effects
# Run as player at player anchored eyes

# === TAG SWINGER FOR DAMAGE ATTRIBUTION ===
tag @s add ec.rg_swinger

# === TOGGLE DUALITY (alternates 0/1 each swing — used by TBATE ability) ===
scoreboard players add @s ec.rg_duality 1
execute if score @s ec.rg_duality matches 2.. run scoreboard players set @s ec.rg_duality 0

# === BRANCH TO TIER-SPECIFIC SWING ===
# Each tier function handles damage, target count, and per-dagger bonuses
execute if score @s ec.rg_tier matches 1 run function evercraft:artifacts/rogue/swing_t1
execute if score @s ec.rg_tier matches 2 run function evercraft:artifacts/rogue/swing_t2
execute if score @s ec.rg_tier matches 3 run function evercraft:artifacts/rogue/swing_t3
execute if score @s ec.rg_tier matches 4 run function evercraft:artifacts/rogue/swing_t4
execute if score @s ec.rg_tier matches 5 run function evercraft:artifacts/rogue/swing_t5
execute if score @s ec.rg_tier matches 6 run function evercraft:artifacts/rogue/swing_t6

# === CLEANUP ===
tag @s remove ec.rg_swinger

# === RESET SWING TIMER ===
# Guaranteed fallback — prevents infinite swing loop if tier doesn't match
scoreboard players set @s ec.rg_swing 15
# OPT: return run exits on first match (was 12 checks always, now 1)
function evercraft:artifacts/rogue/set_swing_timer

# === SCALE BY ATTACK SPEED ===
# Formula: interval = base × reference_speed / actual_speed
# Rogue reference: 60 (effective 0.6 attack speed × 100)
execute store result score #aspd ec.temp run attribute @s attack_speed get 100
scoreboard players operation @s ec.rg_swing *= #60 ec.const
scoreboard players operation @s ec.rg_swing /= #aspd ec.temp
execute if score @s ec.rg_swing matches ..0 run scoreboard players set @s ec.rg_swing 1
