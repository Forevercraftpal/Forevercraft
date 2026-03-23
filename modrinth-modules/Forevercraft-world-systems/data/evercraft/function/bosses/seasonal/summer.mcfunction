# World Boss — Summer Seasonal Effects
# Called as boss entity, at boss position, every 1s
# Flame bursts + heat shimmer + fire damage

# Ambient: heat shimmer particles
particle minecraft:flame ~ ~2 ~ 2 1 2 0.01 3
particle minecraft:smoke ~ ~1.5 ~ 1.5 0.5 1.5 0.01 3

# Every 8s: Flame burst — set players on fire + remove fire resistance
execute if score #wb_season_cd ec.var matches 0 run effect clear @a[tag=wb.participant,distance=..8] fire_resistance
execute if score #wb_season_cd ec.var matches 0 as @a[tag=wb.participant,distance=..8] run damage @s 2 minecraft:on_fire
execute if score #wb_season_cd ec.var matches 0 run particle minecraft:flame ~ ~1 ~ 6 2 6 0.15 40
execute if score #wb_season_cd ec.var matches 0 run particle minecraft:lava ~ ~0.5 ~ 3 0.5 3 0.1 15
execute if score #wb_season_cd ec.var matches 0 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.8 1.2
execute if score #wb_season_cd ec.var matches 0 run function evercraft:bosses/seasonal/announce_summer with storage evercraft:bosses active
execute if score #wb_season_cd ec.var matches 0 run scoreboard players set #wb_season_cd ec.var 8
