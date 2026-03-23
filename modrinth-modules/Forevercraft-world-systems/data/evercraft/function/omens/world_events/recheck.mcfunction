# World Event Omen — Recheck Conditions at Timer Expiry
# If conditions still valid, start event. Otherwise cancel.

# Refresh condition data
function evercraft:world_events/compute_avg_dr
execute store result score #we_now ec.temp run time query gametime

# Recheck each event's conditions
# Starfall (1): New Moon + night + DR 15+ + 2+ players
execute if score #we_omen_id ec.var matches 1 if score #moon_phase ec.var matches 4 if score #visual_time ec.var matches 13000..23000 if score #we_avg_dr ec.var matches 150.. if score #we_player_count ec.var matches 2.. run function evercraft:world_events/starfall/try_start
execute if score #we_omen_id ec.var matches 1 unless score #we_active ec.var matches 1 run tellraw @a [{text:""},{"text":"The stars settle... the moment has passed.","color":"gray","italic":true}]

# Abyssal Tremor (3): Full Moon + night + player below Y=-48
execute if score #we_omen_id ec.var matches 3 if score #moon_phase ec.var matches 0 if score #visual_time ec.var matches 13000..23000 if entity @a[y=-64,dy=16] run function evercraft:world_events/abyssal_tremor/try_start
execute if score #we_omen_id ec.var matches 3 unless score #we_active ec.var matches 1 run tellraw @a [{text:""},{"text":"The trembling subsides... for now.","color":"gray","italic":true}]

# Aurora Bloom (4): Dawn + post-full-moon
execute if score #we_omen_id ec.var matches 4 if score #visual_time ec.var matches 0..1000 if score #moon_phase ec.var matches 1 run function evercraft:world_events/aurora_bloom/try_start
execute if score #we_omen_id ec.var matches 4 unless score #we_active ec.var matches 1 run tellraw @a [{text:""},{"text":"The shimmer fades with the morning light.","color":"gray","italic":true}]

# Rift Echo (5): 3+ rifts + New Moon + night
execute if score #we_omen_id ec.var matches 5 if score #cal_rift_count ec.var matches 3.. if score #moon_phase ec.var matches 4 if score #visual_time ec.var matches 13000..23000 run function evercraft:world_events/rift_echo/try_start
execute if score #we_omen_id ec.var matches 5 unless score #we_active ec.var matches 1 run tellraw @a [{text:""},{"text":"The boundary holds... this time.","color":"gray","italic":true}]

# Clear omen state
scoreboard players set #we_omen_id ec.var 0
scoreboard players set #we_omen_timer ec.var 0
