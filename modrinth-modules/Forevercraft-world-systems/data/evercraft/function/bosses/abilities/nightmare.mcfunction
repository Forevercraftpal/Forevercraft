# Nightmare — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Darkness aura (10 blocks, permanent while near)
execute if score #wb_phase ec.var matches 1 run effect give @a[tag=wb.participant,distance=..10] darkness 3 0 true

# Phase 2: Darkness aura + Blindness pulse every 12s + Speed III self-buff
execute if score #wb_phase ec.var matches 2 run effect give @a[tag=wb.participant,distance=..10] darkness 3 0 true
execute if score #wb_phase ec.var matches 2 run effect give @s speed 3 2 true
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..12] blindness 5 0
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 2.0 0.3
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:smoke ~ ~1 ~ 3 1 3 0.05 30
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 12

# Phase 3: Sculk shriek damage pulse every 15s + Wither I aura
execute if score #wb_phase ec.var matches 3 run effect give @a[tag=wb.participant,distance=..10] darkness 3 0 true
execute if score #wb_phase ec.var matches 3 run effect give @a[tag=wb.participant,distance=..10] wither 3 0 true
execute if score #wb_phase ec.var matches 3 run effect give @s speed 3 2 true
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..10] run damage @s 8 minecraft:sonic_boom
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2.0 0.6
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:sculk_soul ~ ~1 ~ 4 1 4 0.05 40
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 15

# Phase 4: Blindness + Wither II aura
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..10] wither 3 1 true
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..12] blindness 3 0 true
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:sculk_soul ~ ~1 ~ 5 2 5 0.05 30
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1.5 0.5
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Ambient particles
particle minecraft:sculk_soul ~ ~1.5 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:ash ~ ~1 ~ 0.5 0.5 0.5 0.01 5
