# Calendar Omen — Particle Effects (fires every 1s during last 30s)
# Intensity increases as timer decreases (more particles closer to event)

# Harvest Festival (1): gold particles rising from ground
execute if score #cal_omen_id ec.var matches 1 as @a at @s run particle minecraft:dust{color:[1.0,0.85,0.0],scale:1.0} ~ ~0.2 ~ 3 0.1 3 0 5

# Blood Moon (2): red dust in sky
execute if score #cal_omen_id ec.var matches 2 as @a at @s run particle minecraft:dust{color:[0.8,0.1,0.1],scale:1.5} ~ ~8 ~ 5 3 5 0 8

# Merchant Caravan (3): sparkle particles + faint bells
execute if score #cal_omen_id ec.var matches 3 as @a at @s run particle minecraft:enchant ~ ~1 ~ 2 1 2 1 5
execute if score #cal_omen_id ec.var matches 3 if score #cal_omen_timer ec.var matches 1..15 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.15 1.5

# Fishing Derby (4): blue particles over water
execute if score #cal_omen_id ec.var matches 4 as @a at @s run particle minecraft:dust{color:[0.2,0.5,1.0],scale:1.0} ~ ~0.5 ~ 4 0.2 4 0 5

# Meteor Shower (5): white falling particles
execute if score #cal_omen_id ec.var matches 5 as @a at @s run particle minecraft:end_rod ~ ~12 ~ 5 2 5 0.02 3

# Dimensional Rift (6): purple void particles
execute if score #cal_omen_id ec.var matches 6 as @a at @s run particle minecraft:portal ~ ~1 ~ 2 1 2 0.5 10
execute if score #cal_omen_id ec.var matches 6 as @a at @s run particle minecraft:reverse_portal ~ ~2 ~ 3 2 3 0.1 5

# Prosperity Tide (7): emerald green swirl
execute if score #cal_omen_id ec.var matches 7 as @a at @s run particle minecraft:dust{color:[0.2,0.9,0.3],scale:1.0} ~ ~1 ~ 2 1 2 0 5
