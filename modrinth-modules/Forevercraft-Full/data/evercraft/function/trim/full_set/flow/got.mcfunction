tag @s add full_set_flow
function evercraft:trim/single/flow/got
tag @s remove single_flow

execute if entity @s[nbt={root_vehicle:{entity:{Tags:["full_set_flow_wind_ball"]}}}] run return 0
execute if entity @e[type=horse,tag=full_set_flow_wind_ball,distance=..3] run return 0

summon horse ~ ~ ~ {Silent:1b,Invulnerable:1b,Tame:1b,variant:"white",Tags:["full_set_flow_wind_ball","flow_horse_new"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:jump_strength",base:1},{id:"minecraft:max_health",base:40},{id:"minecraft:movement_speed",base:0.3375}],equipment:{saddle:{id:"minecraft:saddle",count:1}}}
ride @s mount @n[type=horse,tag=full_set_flow_wind_ball,distance=..5]
execute as @n[type=horse,tag=full_set_flow_wind_ball,distance=..5] run data modify entity @s owner set from entity @p UUID
playsound minecraft:entity.wind_charge.wind_burst player @s ~ ~ ~ 1 1
