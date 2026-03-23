# Hollow King — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Slowness I aura (10 blocks, reapply every tick = persistent)
execute if score #wb_phase ec.var matches 1 run effect give @a[tag=wb.participant,distance=..10] slowness 3 0 true

# Phase 2: Weakness I aura (replaces Slowness)
execute if score #wb_phase ec.var matches 2 run effect give @a[tag=wb.participant,distance=..10] weakness 3 0 true

# Phase 3: Weakness I + Darkness pulse every 15s
execute if score #wb_phase ec.var matches 3 run effect give @a[tag=wb.participant,distance=..10] weakness 3 0 true

# Darkness pulse (Phase 3 only, every 15 ticks of ability_cd cycle)
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..15] darkness 5 0
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:ambient.cave master @a ~ ~ ~ 1.0 0.5
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:smoke ~ ~1 ~ 2 1 2 0.05 30
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 15

# Phase 4: Wither I aura + Darkness every 10s
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..10] wither 3 0 true
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..15] darkness 5 0
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:ambient.cave master @a ~ ~ ~ 1.0 0.3
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:sculk_soul ~ ~1 ~ 3 1 3 0.05 20
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Ambient undead particles
particle minecraft:soul ~ ~1.5 ~ 0.3 0.5 0.3 0.02 3
particle minecraft:smoke ~ ~0.5 ~ 0.5 0.2 0.5 0.01 5
