# Resonance Strike — Evaluate strike quality
# Run as player, at player position
# Compare cursor position to sweet spot zone

# Calculate distance from zone center
scoreboard players operation #cf_r_dist ec.temp = @s ec.cf_reso_pos
scoreboard players operation #cf_r_dist ec.temp -= @s ec.cf_reso_zone
execute if score #cf_r_dist ec.temp matches ..-1 run scoreboard players operation #cf_r_dist ec.temp *= #-1 ec.const

# === PERFECT (distance 0-1): center of zone ===
execute if score #cf_r_dist ec.temp matches ..1 run function evercraft:craftforever/nodes/resonance/reward_perfect

# === GOOD (distance 2-3): edge of zone ===
execute if score #cf_r_dist ec.temp matches 2..3 run function evercraft:craftforever/nodes/resonance/reward_good

# === MISS (distance 4+): outside zone ===
execute if score #cf_r_dist ec.temp matches 4.. run function evercraft:craftforever/nodes/resonance/reward_miss

# Cleanup always
function evercraft:craftforever/nodes/resonance/cleanup
