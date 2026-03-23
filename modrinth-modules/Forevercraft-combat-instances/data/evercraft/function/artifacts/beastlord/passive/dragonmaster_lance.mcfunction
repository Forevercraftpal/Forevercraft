# Dragonmaster Lance (Mythical) — Passive: Wyrmrider Set Synergy
# Grants scaling bonuses based on how many Dragonmaster set pieces are worn
# ec.dragonmaster score is computed by sets/check_sets.mcfunction

# Only apply effects every 40 ticks (synced with strength aura refresh)
execute unless score @s ec.bl_str_tick matches 1 run return 0

# No set pieces worn — no bonus
execute unless score @s ec.dragonmaster matches 2.. run return 0

# 2+ pieces: Speed I
execute if score @s ec.dragonmaster matches 2.. run effect give @s speed 4 0 true

# 4+ pieces: Resistance I + dragon aura particles
execute if score @s ec.dragonmaster matches 4.. run effect give @s resistance 4 0 true
execute if score @s ec.dragonmaster matches 4.. at @s run particle dragon_breath ~ ~0.5 ~ 0.5 0.3 0.5 0.02 5

# 6 pieces (full set): Strength II
execute if score @s ec.dragonmaster matches 6 run effect give @s strength 4 1 true
