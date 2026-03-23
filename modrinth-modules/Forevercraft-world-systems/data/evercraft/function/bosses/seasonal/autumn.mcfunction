# World Boss — Autumn Seasonal Effects
# Called as boss entity, at boss position, every 1s
# Wind gusts + falling leaves + knockback bonus

# Ambient: falling leaf particles
particle minecraft:cherry_leaves ~ ~2 ~ 3 2 3 0.02 8
particle minecraft:composter ~ ~1 ~ 2 1 2 0.02 5

# Every 10s: Wind gust — knockback nearby participants
execute if score #wb_season_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..10] slowness 2 0 true
execute if score #wb_season_cd ec.var matches 0 run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.5 1.5
execute if score #wb_season_cd ec.var matches 0 run particle minecraft:cloud ~ ~1 ~ 5 1 5 0.1 20
execute if score #wb_season_cd ec.var matches 0 run function evercraft:bosses/seasonal/announce_autumn with storage evercraft:bosses active
execute if score #wb_season_cd ec.var matches 0 run scoreboard players set #wb_season_cd ec.var 10
