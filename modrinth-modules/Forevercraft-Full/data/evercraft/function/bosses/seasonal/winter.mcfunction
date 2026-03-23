# World Boss — Winter Seasonal Effects
# Called as boss entity, at boss position, every 1s
# Frost bursts + snowflake particles + freezing

# Ambient: snowflake particles
particle minecraft:snowflake ~ ~2 ~ 3 2 3 0.02 10

# Every 8s: Frost burst — Slowness II + freeze damage to nearby participants
execute if score #wb_season_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..8] slowness 3 1
execute if score #wb_season_cd ec.var matches 0 as @a[tag=wb.participant,distance=..8] run damage @s 1 minecraft:freeze
execute if score #wb_season_cd ec.var matches 0 run particle minecraft:snowflake ~ ~1 ~ 5 2 5 0.15 40
execute if score #wb_season_cd ec.var matches 0 run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1.0 0.8
execute if score #wb_season_cd ec.var matches 0 run function evercraft:bosses/seasonal/announce_winter with storage evercraft:bosses active
execute if score #wb_season_cd ec.var matches 0 run scoreboard players set #wb_season_cd ec.var 8
