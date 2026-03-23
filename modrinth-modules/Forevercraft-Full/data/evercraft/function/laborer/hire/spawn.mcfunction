# Spawn a laborer villager at the player's position
# Runs as: player (@s). Expects: ec.lb_hire_type set to type ID (1-6) on @s

# Store the type for macro dispatch
execute store result storage evercraft:laborers temp.type_id int 1 run scoreboard players get @s ec.lb_hire_type

# Pick a random name index (0-29) using random command
execute store result storage evercraft:laborers temp.name_idx int 1 run random value 0..29

# Store current gametime for hired_at
execute store result storage evercraft:laborers temp.gametime int 1 run time query gametime

# Dispatch to type-specific spawn function (sets villager appearance + name)
execute if score @s ec.lb_hire_type matches 1 run function evercraft:laborer/hire/spawn_miner
execute if score @s ec.lb_hire_type matches 2 run function evercraft:laborer/hire/spawn_farmer
execute if score @s ec.lb_hire_type matches 3 run function evercraft:laborer/hire/spawn_fisher
execute if score @s ec.lb_hire_type matches 4 run function evercraft:laborer/hire/spawn_woodcutter
execute if score @s ec.lb_hire_type matches 5 run function evercraft:laborer/hire/spawn_forager
execute if score @s ec.lb_hire_type matches 6 run function evercraft:laborer/hire/spawn_prospector

# Copy player scores to temp before switching context to the laborer entity
# (init_laborer runs as the villager, so it can't access @s player scores)
scoreboard players operation #lb_owner_type ec.lb_temp = @s ec.lb_hire_type
scoreboard players operation #lb_owner_count ec.lb_temp = @s ec.lb_count
scoreboard players operation #lb_owner_id ec.lb_temp = @s companion.id

# Store owner UUID in storage for the laborer to copy
data modify storage evercraft:laborers temp.owner_uuid set from entity @s UUID

# Initialize the new laborer's scoreboards (on entity tagged ec.lb_new)
execute as @e[type=villager,tag=ec.lb_new,limit=1] run function evercraft:laborer/hire/init_laborer

# Increment player's laborer count
scoreboard players add @s ec.lb_count 1

# Success feedback
tellraw @s [{"text":"[Laborer] ","color":"gold"},{"text":"A new laborer has been hired! ","color":"green"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"ec.lb_count"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ec.lb_max"},"color":"yellow"},{"text":" slots)","color":"gray"}]
playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 1
execute at @s run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 15
