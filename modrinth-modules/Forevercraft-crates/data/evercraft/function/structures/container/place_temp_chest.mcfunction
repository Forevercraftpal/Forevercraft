# Place a temporary chest at this position
# Run at the position where chest should go, as the player
# Now goes through Dream Rate gating first!

# Use a flag to prevent multiple calls
scoreboard players set #cf_placed cf.temp 0

# Check lifetime crate cap (sets #cf_placed 1 if capped, blocking all position attempts)
# Skip cap for refreshed chests — they're already counted in the player's total
execute unless score #cf_is_refresh cf.temp matches 1 run function evercraft:structures/container/check_crate_cap

# Find a safe spot (air or water block) and check dream gate
# Priority: air behind player > air above > water behind player > water above > player feet fallback
execute if score #cf_placed cf.temp matches 0 if block ~ ~ ~ minecraft:air run function evercraft:structures/container/check_dream_gate
execute if score #cf_placed cf.temp matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:air run function evercraft:structures/container/check_dream_gate
execute if score #cf_placed cf.temp matches 0 if block ~ ~ ~ minecraft:water run function evercraft:structures/container/check_dream_gate
execute if score #cf_placed cf.temp matches 0 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:water run function evercraft:structures/container/check_dream_gate
execute if score #cf_placed cf.temp matches 0 at @s run function evercraft:structures/container/check_dream_gate
