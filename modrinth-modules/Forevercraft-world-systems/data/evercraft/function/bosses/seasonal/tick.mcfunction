# World Boss — Seasonal Effect Tick
# Called from bosses/tick.mcfunction, as boss entity, at boss position
# Applies season-specific environmental hazards to all boss fights

# Decrement seasonal cooldown
scoreboard players remove #wb_season_cd ec.var 1
execute if score #wb_season_cd ec.var matches ..-1 run scoreboard players set #wb_season_cd ec.var 0

# Dispatch seasonal effect by current season
execute if score #wb_season ec.var matches 0 run function evercraft:bosses/seasonal/autumn
execute if score #wb_season ec.var matches 1 run function evercraft:bosses/seasonal/winter
execute if score #wb_season ec.var matches 2 run function evercraft:bosses/seasonal/spring
execute if score #wb_season ec.var matches 3 run function evercraft:bosses/seasonal/summer

# Water detection: boss in water gains Dolphin's Grace but loses speed
execute if block ~ ~ ~ water unless entity @s[tag=wb.in_water] run function evercraft:bosses/seasonal/water_enter
execute unless block ~ ~ ~ water if entity @s[tag=wb.in_water] run function evercraft:bosses/seasonal/water_exit
# Maintain dolphin's grace while in water
execute if entity @s[tag=wb.in_water] run effect give @s dolphins_grace 3 0 true
