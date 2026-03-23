# Harmonic Convergence: Place convergence lore sparkle at current position
# Uses same interaction pattern as normal lore sparkles, with convergence tags

# Data marker (tagged as both lore sparkle AND convergence sparkle)
summon marker ~ ~ ~ {Tags:["ec.lore_sparkle","ec.lore_data","ec.conv_sparkle","ec.lore_new"]}
execute store result entity @e[type=marker,tag=ec.lore_new,limit=1,distance=..1] data.spawn_time long 1 run time query gametime
tag @e[type=marker,tag=ec.lore_new,limit=1,distance=..1] remove ec.lore_new

# Interaction entity (right-click target — tagged for convergence routing)
summon interaction ~ ~0.1 ~ {Tags:["ec.lore_sparkle","ec.lore_click","ec.conv_sparkle"],width:1.0f,height:1.0f,response:1b}

# Distinct purple/gold particle burst (different from normal gold sparkles)
particle dust{color:[0.7,0.4,1.0],scale:1.2} ~ ~0.3 ~ 0.2 0.2 0.2 0 12
particle minecraft:end_rod ~ ~0.5 ~ 0.1 0.3 0.1 0.01 8
particle dust{color:[1.0,0.85,0.3],scale:0.6} ~ ~0.5 ~ 0.15 0.15 0.15 0 5
