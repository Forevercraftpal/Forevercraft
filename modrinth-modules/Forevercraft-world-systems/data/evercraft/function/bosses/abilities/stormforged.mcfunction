# Stormforged — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Lightning strike at random player every 10s
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 at @a[tag=wb.participant,distance=..30,sort=random,limit=1] run summon lightning_bolt ~ ~ ~
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1.0 1.0
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Phase 2: Chain lightning (3 nearby players) every 8s
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..30,sort=random,limit=3] at @s run summon lightning_bolt ~ ~ ~
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1.5 0.8
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:electric_spark ~ ~2 ~ 2 2 2 0.1 30
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 8

# Phase 3: Storm cloud aura (continuous damage) + lightning every 5s
execute if score #wb_phase ec.var matches 3 as @a[tag=wb.participant,distance=..8] run damage @s 2 minecraft:lightning_bolt
execute if score #wb_phase ec.var matches 3 run particle minecraft:electric_spark ~ ~2 ~ 3 2 3 0.05 15
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..30,sort=random,limit=2] at @s run summon lightning_bolt ~ ~ ~
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 5

# Phase 4: Lightning barrage every 8s + Levitation pulse
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run summon lightning_bolt ~ ~ ~
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run summon lightning_bolt ~3 ~ ~3
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run summon lightning_bolt ~-3 ~ ~-3
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..8] levitation 2 0
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2.0 0.5
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:electric_spark ~ ~2 ~ 3 2 3 0.1 30
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 8

# Ambient particles
particle minecraft:electric_spark ~ ~2 ~ 0.5 0.5 0.5 0.02 5
particle minecraft:cloud ~ ~3 ~ 1 0.2 1 0.01 3
