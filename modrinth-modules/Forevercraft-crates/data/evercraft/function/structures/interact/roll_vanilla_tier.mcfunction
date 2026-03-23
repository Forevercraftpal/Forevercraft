# Roll tier for vanilla structures (struct_id 1-19)
# Gateless RNG system - every chest can roll any tier, weighted by Dream Rate + structure type
# Run as player, cf.tier contains base tier from structure (1-4), cf.struct_id contains structure type
# NOTE: Tellraw/sound announcements moved to announce_tier.mcfunction (only called when loot spawns)

# Store base tier for reference
scoreboard players operation @s cf.base_tier = @s cf.tier

# Get player's luck (Dream Rate) - multiply by 10 for decimal precision
execute store result score @s cf.luck run attribute @s luck get 10

# Cap luck at 500 (50 Dreams max)
execute if score @s cf.luck matches 501.. run scoreboard players set @s cf.luck 500

# Generate random number 1-1000 for roll
execute store result score #roll cf.temp run random value 1..1000

# ============================================================================
# WEIGHT TABLES - Based on base tier and Dream Rate
# Linear interpolation: weight = base_weight + (luck/500) * (max_weight - base_weight)
# Reuse existing weight calculation functions from unknown structures
# ============================================================================

# Call the appropriate weight calculation based on base tier
execute if score @s cf.base_tier matches 1 run function evercraft:structures/interact/roll_weights_t1
execute if score @s cf.base_tier matches 2 run function evercraft:structures/interact/roll_weights_t2
execute if score @s cf.base_tier matches 3 run function evercraft:structures/interact/roll_weights_t3
execute if score @s cf.base_tier matches 4 run function evercraft:structures/interact/roll_weights_t4

# ============================================================================
# DETERMINE FINAL TIER FROM ROLL
# Weights are cumulative thresholds stored in #w1 through #w6
# ============================================================================

# Default to Common (tier 1)
scoreboard players set @s cf.tier 1

# Check thresholds from lowest to highest tier
execute if score #roll cf.temp > #w1 cf.temp run scoreboard players set @s cf.tier 2
execute if score #roll cf.temp > #w2 cf.temp run scoreboard players set @s cf.tier 3
execute if score #roll cf.temp > #w3 cf.temp run scoreboard players set @s cf.tier 4
execute if score #roll cf.temp > #w4 cf.temp run scoreboard players set @s cf.tier 5
execute if score #roll cf.temp > #w5 cf.temp run scoreboard players set @s cf.tier 6

# Dream Surge Event: clamp minimum tier to 4 (Ornate)
execute if score #ec_event_active ec.var matches 1 if score @s cf.tier matches ..3 run scoreboard players set @s cf.tier 4

# The Dreaming: clamp minimum tier to 3 (Rare)
execute if score #we_dreaming_lock ec.var matches 1 if score @s cf.tier matches ..2 run scoreboard players set @s cf.tier 3

# Prosperity Tide: boost tier by +1
execute if score #cal_prosperity ec.var matches 1 if score @s cf.tier matches ..5 run scoreboard players add @s cf.tier 1
