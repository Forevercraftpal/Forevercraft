# Convert moon phase score to name string in storage
# #moon_phase ec.var: 0=Full, 1=Waning Gibbous, ..., 4=New, ..., 7=Waxing Crescent
execute if score #moon_phase ec.var matches 0 run data modify storage evercraft:briefing moon_name set value "Full Moon"
execute if score #moon_phase ec.var matches 1 run data modify storage evercraft:briefing moon_name set value "Waning Gibbous"
execute if score #moon_phase ec.var matches 2 run data modify storage evercraft:briefing moon_name set value "Third Quarter"
execute if score #moon_phase ec.var matches 3 run data modify storage evercraft:briefing moon_name set value "Waning Crescent"
execute if score #moon_phase ec.var matches 4 run data modify storage evercraft:briefing moon_name set value "New Moon"
execute if score #moon_phase ec.var matches 5 run data modify storage evercraft:briefing moon_name set value "Waxing Crescent"
execute if score #moon_phase ec.var matches 6 run data modify storage evercraft:briefing moon_name set value "First Quarter"
execute if score #moon_phase ec.var matches 7 run data modify storage evercraft:briefing moon_name set value "Waxing Gibbous"
