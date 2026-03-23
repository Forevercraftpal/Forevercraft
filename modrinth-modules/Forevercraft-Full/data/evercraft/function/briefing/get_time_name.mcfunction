# Convert daytime to time-of-day name string in storage
execute store result score #brief_time ec.temp run time query daytime

# Morning: 0-5999
execute if score #brief_time ec.temp matches 0..5999 run data modify storage evercraft:briefing time_name set value "Morning"
# Afternoon: 6000-11999
execute if score #brief_time ec.temp matches 6000..11999 run data modify storage evercraft:briefing time_name set value "Afternoon"
# Evening: 12000-17999
execute if score #brief_time ec.temp matches 12000..17999 run data modify storage evercraft:briefing time_name set value "Evening"
# Night: 18000+
execute if score #brief_time ec.temp matches 18000.. run data modify storage evercraft:briefing time_name set value "Night"
