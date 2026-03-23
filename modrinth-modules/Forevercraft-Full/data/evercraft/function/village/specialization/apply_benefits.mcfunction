# ============================================================
# Apply Village Specialization Benefits
# Passive buffs based on the village's specialization
# Run as the player, at the player (called from quests/reputation/apply_benefits)
# ============================================================

# Skip if exiled from this village
execute if score @s vs.exile matches 1 run return fail

# Load current village specialization (sets #vs_current_spec vs.temp)
function evercraft:village/specialization/get_spec

# No specialization → no extra benefits
execute unless score #vs_current_spec vs.temp matches 1.. run return fail

# Mining: Haste I (faster mining in town)
execute if score #vs_current_spec vs.temp matches 1 run effect give @s minecraft:haste 3 0 true

# Fishing: Luck I (blessed waters)
execute if score #vs_current_spec vs.temp matches 2 run effect give @s minecraft:luck 3 0 true

# Farming: Regeneration I (nourishing village)
execute if score #vs_current_spec vs.temp matches 3 run effect give @s minecraft:regeneration 3 0 true

# Combat: Strength I (warrior's spirit)
execute if score #vs_current_spec vs.temp matches 4 run effect give @s minecraft:strength 3 0 true

# Exploration: Speed I (scout's pace)
execute if score #vs_current_spec vs.temp matches 5 run effect give @s minecraft:speed 3 0 true

# Scholarly: Night Vision (knowledge illuminates)
execute if score #vs_current_spec vs.temp matches 6 run effect give @s minecraft:night_vision 5 0 true
