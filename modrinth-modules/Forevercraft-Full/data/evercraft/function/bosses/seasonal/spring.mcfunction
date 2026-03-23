# World Boss — Spring Seasonal Effects
# Called as boss entity, at boss position, every 1s
# Poison clouds + boss regeneration + pollen particles

# Ambient: pollen/flower particles
particle minecraft:happy_villager ~ ~2 ~ 3 2 3 0.02 5
particle minecraft:spore_blossom_air ~ ~1.5 ~ 2 1.5 2 0.01 3

# Boss heals 1 HP every 5s (slow regen)
execute if score #wb_season_cd ec.var matches 0 run effect give @s regeneration 6 0 true

# Every 12s: Poison cloud — Poison I to nearby participants
execute if score #wb_season_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..10] poison 4 0
execute if score #wb_season_cd ec.var matches 0 run particle minecraft:item_slime ~ ~1 ~ 5 1 5 0.1 20
execute if score #wb_season_cd ec.var matches 0 run playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 1.0 0.8
execute if score #wb_season_cd ec.var matches 0 run function evercraft:bosses/seasonal/announce_spring with storage evercraft:bosses active
execute if score #wb_season_cd ec.var matches 0 run scoreboard players set #wb_season_cd ec.var 12
