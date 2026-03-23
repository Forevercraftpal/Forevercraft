# Pharaoh's Fist — Per-Tick Processing (Striker)
# Run as @s at @s when holding spirit weapon ID 9

# === KILL COMBO DECAY ===
# Slow decay: remove 1 every 100 ticks
execute if score @s ec.sp_kill_combo matches 1.. store result score #pf_mod ec.temp run time query gametime
execute if score @s ec.sp_kill_combo matches 1.. run scoreboard players operation #pf_mod ec.temp %= #20 ec.const
execute if score @s ec.sp_kill_combo matches 1.. if score #pf_mod ec.temp matches 0 run scoreboard players remove @s ec.sp_kill_combo 1

# === GOLDEN GLOW (kill combo threshold) ===
# Threshold: 50 kills normal, 30 kills spirit — apply attack damage boost
execute if score @s ec.sp_tier matches 7 if score @s ec.sp_kill_combo matches 30.. unless entity @s[tag=ec.sp_golden_glow] run function evercraft:spirit/abilities/pharaoh_fist/golden_glow_on
execute unless score @s ec.sp_tier matches 7 if score @s ec.sp_kill_combo matches 50.. unless entity @s[tag=ec.sp_golden_glow] run function evercraft:spirit/abilities/pharaoh_fist/golden_glow_on

# Remove golden glow if combo drops below threshold
execute if score @s ec.sp_tier matches 7 if entity @s[tag=ec.sp_golden_glow] unless score @s ec.sp_kill_combo matches 30.. run function evercraft:spirit/abilities/pharaoh_fist/golden_glow_off
execute unless score @s ec.sp_tier matches 7 if entity @s[tag=ec.sp_golden_glow] unless score @s ec.sp_kill_combo matches 50.. run function evercraft:spirit/abilities/pharaoh_fist/golden_glow_off

# Golden glow VFX (every 10 ticks)
execute if entity @s[tag=ec.sp_golden_glow] store result score #pf_mod2 ec.temp run time query gametime
execute if entity @s[tag=ec.sp_golden_glow] run scoreboard players operation #pf_mod2 ec.temp %= #10 ec.const
execute if entity @s[tag=ec.sp_golden_glow] if score #pf_mod2 ec.temp matches 0 run particle dust{color:[1.0,0.85,0.0],scale:1.0} ~ ~1 ~ 0.3 0.5 0.3 0.01 3

# === CHRONO FIST ACTIVE (freeze timer) ===
execute if entity @s[tag=ec.sp_chrono_active] run scoreboard players remove @s ec.sp_timer 1

# Chrono expire — damage burst + cleanup
execute if entity @s[tag=ec.sp_chrono_active,scores={ec.sp_timer=..0}] run function evercraft:spirit/abilities/pharaoh_fist/chrono_expire

# === TITAN BREAKER WINDUP ===
execute if entity @s[tag=ec.sp_charging] run scoreboard players remove @s ec.sp_state 1

# Windup VFX
execute if entity @s[tag=ec.sp_charging,scores={ec.sp_state=1..}] run particle dust{color:[1.0,0.7,0.0],scale:2.0} ~ ~1 ~ 0.3 0.5 0.3 0.01 3

# Windup complete — deliver the hit
execute if entity @s[tag=ec.sp_charging,scores={ec.sp_state=..0}] run function evercraft:spirit/abilities/pharaoh_fist/titan_hit
