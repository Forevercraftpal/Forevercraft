# Infernal Titan — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Fire aura (5 blocks) every 5s
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..5] run damage @s 2 minecraft:in_fire
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run particle minecraft:flame ~ ~1 ~ 2 0.5 2 0.05 20
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1.5 0.8
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 5

# Phase 2: Explosion pulse (4 damage + particles, 8 blocks) every 12s
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..8] run damage @s 4 minecraft:explosion
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:explosion ~ ~1 ~ 3 1 3 0.1 10
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:lava ~ ~1 ~ 3 1 3 0.1 20
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 0.6
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 12

# Phase 3: Regeneration + fire trail + explosion pulse every 8s
execute if score #wb_phase ec.var matches 3 run effect give @s regeneration 3 1 true
execute if score #wb_phase ec.var matches 3 run particle minecraft:flame ~ ~0.5 ~ 0.5 0.2 0.5 0.02 8
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..8] run damage @s 4 minecraft:explosion
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..5] run damage @s 2 minecraft:in_fire
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:explosion ~ ~1 ~ 3 1 3 0.1 10
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 0.6
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 8

# Phase 4: Inferno eruption every 6s
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..8] run damage @s 3 minecraft:on_fire
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:flame ~ ~1 ~ 8 2 8 0.15 60
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:lava ~ ~0.5 ~ 5 1 5 0.1 30
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2.0 0.3
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 6

# Ambient particles
particle minecraft:flame ~ ~1.5 ~ 0.5 0.5 0.5 0.03 5
particle minecraft:lava ~ ~0.5 ~ 0.3 0.2 0.3 0.01 3
