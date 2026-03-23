# Initialize a newly spawned laborer's scoreboards
# Runs as the laborer entity (tag: ec.lb_new)
# Owner data pre-stored in #lb_owner_type, #lb_owner_count (ec.lb_temp)
# and storage evercraft:laborers temp.owner_uuid

# Copy type from temp (set by spawn.mcfunction before context switch)
scoreboard players operation @s ec.lb_type = #lb_owner_type ec.lb_temp

# State: IDLE
scoreboard players set @s ec.lb_state 0

# Not fed (0 = unfed, gametime when fed will be stored here)
scoreboard players set @s ec.lb_fed 0
scoreboard players set @s ec.lb_food_tier 0
scoreboard players set @s ec.lb_food_cat 0

# Quality: calculate on first expedition
scoreboard players set @s ec.lb_quality 0

# Stats
scoreboard players set @s ec.lb_expeditions 0
scoreboard players set @s ec.lb_adventures 0
scoreboard players set @s ec.lb_perm_bonus 0

# Slot index = player's current count (before increment in spawn.mcfunction)
scoreboard players operation @s ec.lb_slot = #lb_owner_count ec.lb_temp

# Expedition timer (not started yet)
scoreboard players set @s ec.lb_exp_start 0
scoreboard players set @s ec.lb_exp_dur 0

# Store owner ID (companion.id) for reliable owner matching
scoreboard players operation @s ec.lb_owner_id = #lb_owner_id ec.lb_temp

# Store owner UUID from storage (set by spawn.mcfunction)
data modify entity @s data.owner set from storage evercraft:laborers temp.owner_uuid

# Add interaction entity for right-click detection
execute at @s run summon interaction ~ ~1.0 ~ {Tags:["ec.lb_interact","ec.lb_new_interact","smithed.entity"],width:0.9f,height:1.8f,response:1b}
# Link interaction to this laborer
data modify entity @e[type=interaction,tag=ec.lb_new_interact,limit=1] data.laborer_uuid set from entity @s UUID
tag @e[type=interaction,tag=ec.lb_new_interact] remove ec.lb_new_interact

# Remove the new tag
tag @s remove ec.lb_new
