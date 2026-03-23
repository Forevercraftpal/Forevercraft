# Dream Rate Milestone Check — runs as each player every 10s
# Compares current DR to milestone thresholds, celebrates highest new milestone
# ec.dr_peak_ms: 0=none, 1=5.0, 2=10.0, 3=15.0, 4=20.0, 5=25.0, 6=30.0, 7=40.0, 8=50.0

# Get current DR (scale 10: 17.5 → 175)
execute store result score @s ec.temp run attribute @s luck get 10

# Determine current milestone level from DR
scoreboard players set #dr_ms ec.temp 0
execute if score @s ec.temp matches 50.. run scoreboard players set #dr_ms ec.temp 1
execute if score @s ec.temp matches 100.. run scoreboard players set #dr_ms ec.temp 2
execute if score @s ec.temp matches 150.. run scoreboard players set #dr_ms ec.temp 3
execute if score @s ec.temp matches 200.. run scoreboard players set #dr_ms ec.temp 4
execute if score @s ec.temp matches 250.. run scoreboard players set #dr_ms ec.temp 5
execute if score @s ec.temp matches 300.. run scoreboard players set #dr_ms ec.temp 6
execute if score @s ec.temp matches 400.. run scoreboard players set #dr_ms ec.temp 7
execute if score @s ec.temp matches 500.. run scoreboard players set #dr_ms ec.temp 8

# Early exit if no new milestone
execute if score #dr_ms ec.temp <= @s ec.dr_peak_ms run return 0

# Update peak
scoreboard players operation @s ec.dr_peak_ms = #dr_ms ec.temp

# Celebrate the milestone reached
execute if score #dr_ms ec.temp matches 1 run function evercraft:dreams/milestones/celebrate {title:"Awakened Dreamer",dr:"5.0",color:"green"}
execute if score #dr_ms ec.temp matches 2 run function evercraft:dreams/milestones/celebrate {title:"Lucid Dreamer",dr:"10.0",color:"dark_aqua"}
execute if score #dr_ms ec.temp matches 3 run function evercraft:dreams/milestones/celebrate {title:"Dream Walker",dr:"15.0",color:"aqua"}
execute if score #dr_ms ec.temp matches 4 run function evercraft:dreams/milestones/celebrate {title:"Dream Shaper",dr:"20.0",color:"blue"}
execute if score #dr_ms ec.temp matches 5 run function evercraft:dreams/milestones/celebrate {title:"Dream Master",dr:"25.0",color:"light_purple"}
execute if score #dr_ms ec.temp matches 6 run function evercraft:dreams/milestones/celebrate {title:"Dream Sage",dr:"30.0",color:"dark_purple"}
execute if score #dr_ms ec.temp matches 7 run function evercraft:dreams/milestones/celebrate {title:"Dream Ascendant",dr:"40.0",color:"gold"}
execute if score #dr_ms ec.temp matches 8 run function evercraft:dreams/milestones/celebrate {title:"Dream Transcendent",dr:"50.0",color:"yellow"}
