# Map season_id to season name string in storage
# 0=Autumn, 1=Winter, 2=Spring, 3=Summer
execute if score #season_id ec.var matches 0 run data modify storage evercraft:briefing season_name set value "Autumn"
execute if score #season_id ec.var matches 1 run data modify storage evercraft:briefing season_name set value "Winter"
execute if score #season_id ec.var matches 2 run data modify storage evercraft:briefing season_name set value "Spring"
execute if score #season_id ec.var matches 3 run data modify storage evercraft:briefing season_name set value "Summer"
