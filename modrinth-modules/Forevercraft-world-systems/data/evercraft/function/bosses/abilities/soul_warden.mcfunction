# Soul Warden — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Soul drain — Weakness I aura (10 blocks)
execute if score #wb_phase ec.var matches 1 run effect give @a[tag=wb.participant,distance=..10] weakness 3 0 true

# Phase 2: Wither storm — Wither II to all within 12 blocks every 10s
execute if score #wb_phase ec.var matches 2 run effect give @a[tag=wb.participant,distance=..10] weakness 3 0 true
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..12] wither 5 1
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1.5 0.5
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:soul_fire_flame ~ ~1 ~ 4 1 4 0.05 30
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Phase 3: Soul harvest — instant 6 damage pulse every 12s + Weakness I aura
execute if score #wb_phase ec.var matches 3 run effect give @a[tag=wb.participant,distance=..10] weakness 3 0 true
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..8] run damage @s 6 minecraft:wither
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2.0 0.4
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:soul ~ ~1 ~ 3 1 3 0.1 40
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 12

# Phase 4: Soul drain — Hunger II + Weakness II
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..10] hunger 3 1 true
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..10] weakness 3 1 true
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:soul ~ ~1 ~ 5 2 5 0.1 30
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1.5 0.5
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Ambient particles
particle minecraft:soul_fire_flame ~ ~1.5 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:soul ~ ~0.5 ~ 0.5 0.2 0.5 0.01 3
