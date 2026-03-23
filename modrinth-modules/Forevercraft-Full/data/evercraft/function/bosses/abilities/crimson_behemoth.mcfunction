# Crimson Behemoth — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Natural charge (hoglin behavior) — ambient only
execute if score #wb_phase ec.var matches 1 run particle minecraft:dust{color:[0.8,0.2,0.1],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0.01 5

# Phase 2: Tremor — knockback pulse (10 blocks) every 8s
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..10] levitation 1 3 true
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..10] run damage @s 3 minecraft:mob_attack
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 2.0 0.5
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:explosion ~ ~0.5 ~ 3 0.3 3 0.1 10
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 8

# Phase 3: Frenzy — permanent speed + attack speed buffs + tremor every 6s
execute if score #wb_phase ec.var matches 3 run effect give @s speed 3 2 true
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..10] levitation 1 3 true
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..10] run damage @s 4 minecraft:mob_attack
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 2.0 0.3
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:explosion ~ ~0.5 ~ 4 0.3 4 0.1 15
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 6

# Phase 4: Charge knockback + Nausea
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..8] nausea 5 0 true
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..6] run damage @s 3 minecraft:mob_attack
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:crimson_spore ~ ~1 ~ 6 2 6 0.15 40
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 2.0 0.3
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 8

# Ambient particles
particle minecraft:dust{color:[0.8,0.2,0.1],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0.02 3
particle minecraft:crimson_spore ~ ~1.5 ~ 0.5 0.5 0.5 0.01 5
