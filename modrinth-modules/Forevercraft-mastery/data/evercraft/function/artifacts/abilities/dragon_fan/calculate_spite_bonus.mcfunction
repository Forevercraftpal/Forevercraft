# Calculate Dragon's Spite bonus based on health percentage
# Formula: bonus_percent = (75 - health_pct) / 2, max 25%

# Calculate: 75 - health_pct
scoreboard players set #spite_calc ec.var 75
scoreboard players operation #spite_calc ec.var -= @s ec.health_pct

# Divide by 2 to get bonus percentage (so at 25% HP = (75-25)/2 = 25% bonus)
scoreboard players operation #spite_calc ec.var /= #2 ec.const

# Cap at 25%
execute if score #spite_calc ec.var matches 26.. run scoreboard players set #spite_calc ec.var 25

# Convert to decimal for attribute modifier (25% = 0.25)
# We'll use fixed tiers for cleaner implementation

# Remove existing modifier first
attribute @s attack_damage modifier remove evercraft:dragons_spite

# Apply tiered bonuses based on health ranges
# 50-74% HP: +5% damage
execute if score @s ec.health_pct matches 50..74 run attribute @s attack_damage modifier add evercraft:dragons_spite 0.05 add_multiplied_base

# 35-49% HP: +15% damage
execute if score @s ec.health_pct matches 35..49 run attribute @s attack_damage modifier add evercraft:dragons_spite 0.15 add_multiplied_base

# 20-34% HP: +20% damage
execute if score @s ec.health_pct matches 20..34 run attribute @s attack_damage modifier add evercraft:dragons_spite 0.20 add_multiplied_base

# Below 20% HP: +25% damage (max)
execute if score @s ec.health_pct matches ..19 run attribute @s attack_damage modifier add evercraft:dragons_spite 0.25 add_multiplied_base
