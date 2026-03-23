# FLOW - Horse management tick
# OPT: Only called when flow horses exist

# Particles
execute as @e[type=horse,tag=full_set_flow_wind_ball] at @s run particle minecraft:gust ~ ~0.5 ~ 0.3 0.3 0.3 0.02 2 force

# Clear new tag
execute as @e[type=horse,tag=full_set_flow_wind_ball,tag=flow_horse_new] run tag @s remove flow_horse_new

# Rider tracking + despawn (piggyback on vex_cooldown_timer for 10-tick interval)
execute if score #vex_cooldown_timer trim_flag matches 0 as @a[nbt={root_vehicle:{entity:{Tags:["full_set_flow_wind_ball"]}}}] run tag @e[type=horse,tag=full_set_flow_wind_ball,limit=1,sort=nearest] add flow_has_rider
execute if score #vex_cooldown_timer trim_flag matches 0 as @e[type=horse,tag=full_set_flow_wind_ball,tag=flow_has_rider] unless entity @a[nbt={root_vehicle:{entity:{Tags:["full_set_flow_wind_ball"]}}}] run function evercraft:trim/full_set/flow/despawn
