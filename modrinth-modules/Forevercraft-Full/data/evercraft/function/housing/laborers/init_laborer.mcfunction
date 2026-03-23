# ============================================================
# Initialize a newly spawned laborer's scoreboards
# Run as: the laborer villager entity
# ============================================================

# State: 0=idle, 1=preparing, 2=expedition, 3=returned
scoreboard players set @s ec.lb_state 0

# Satisfaction (fed timer) — starts unfed
scoreboard players set @s ec.lb_fed 0
scoreboard players set @s ec.lb_food_tier 0
scoreboard players set @s ec.lb_food_cat 0

# Expedition quality (cached)
scoreboard players set @s ec.lb_quality 0

# Stats
scoreboard players set @s ec.lb_expeditions 0
scoreboard players set @s ec.lb_adventures 0
scoreboard players set @s ec.lb_perm_bonus 0

# Expedition timing (gametime-based)
scoreboard players set @s ec.lb_exp_start 0
scoreboard players set @s ec.lb_exp_dur 0

# Slot index
scoreboard players set @s ec.lb_slot 0

# Store hire time (gametime)
execute store result score @s ec.lb_exp_start run time query gametime
