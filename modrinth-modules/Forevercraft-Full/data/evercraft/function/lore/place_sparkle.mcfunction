# Lore Discovery: Summon sparkle entities at current position
# Run at the ground-level position where sparkle should appear

# Data marker (stores spawn gametime for despawn calculation)
summon marker ~ ~ ~ {Tags:["ec.lore_sparkle","ec.lore_data","ec.lore_new"]}
execute store result entity @e[type=marker,tag=ec.lore_new,limit=1,distance=..1] data.spawn_time long 1 run time query gametime
tag @e[type=marker,tag=ec.lore_new,limit=1,distance=..1] remove ec.lore_new

# Interaction entity (right-click target, slightly above ground)
summon interaction ~ ~0.1 ~ {Tags:["ec.lore_sparkle","ec.lore_click"],width:1.0f,height:1.0f,response:1b}

# Spawn particle burst
particle dust{color:[0.9,0.85,0.5],scale:0.8} ~ ~0.3 ~ 0.2 0.2 0.2 0 8
particle minecraft:end_rod ~ ~0.5 ~ 0.1 0.3 0.1 0.01 5
