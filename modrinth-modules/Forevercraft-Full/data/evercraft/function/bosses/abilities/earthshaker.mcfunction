# Earthshaker — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Natural knockback from iron golem + ground pound particles
execute if score #wb_phase ec.var matches 1 run particle minecraft:dust{color:[0.6,0.4,0.2],scale:2.0} ~ ~0.5 ~ 1 0.2 1 0.01 5

# Phase 2: Falling anvils near random player every 8s
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 at @a[tag=wb.participant,distance=..30,sort=random,limit=1] run summon falling_block ~ ~12 ~ {BlockState:{Name:"minecraft:anvil"},Time:1,HurtEntities:1b,FallHurtMax:6,FallHurtAmount:2.0f}
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 at @a[tag=wb.participant,distance=..30,sort=random,limit=1] run summon falling_block ~1 ~14 ~1 {BlockState:{Name:"minecraft:anvil"},Time:1,HurtEntities:1b,FallHurtMax:6,FallHurtAmount:2.0f}
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1.5 0.5
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 8

# Phase 3: Shockwave (damage + Slowness II) every 10s
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..12] run damage @s 4 minecraft:mob_attack
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..12] slowness 3 1 true
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 2.0 0.3
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:explosion ~ ~0.5 ~ 3 0.5 3 0.1 15
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:dust{color:[0.6,0.4,0.2],scale:3.0} ~ ~0.5 ~ 5 0.3 5 0.01 30
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Phase 4: Devastating ground pound + Mining Fatigue II
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..10] mining_fatigue 3 1 true
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=..6] run damage @s 4 minecraft:mob_attack
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:explosion ~ ~0.5 ~ 6 0.3 6 0.2 15
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:dust{color:[0.6,0.4,0.2],scale:3.0} ~ ~0.5 ~ 6 0.3 6 0.01 30
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 2.0 0.3
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 8

# Ambient particles
particle minecraft:dust{color:[0.6,0.4,0.2],scale:2.0} ~ ~0.5 ~ 0.5 0.2 0.5 0.01 5
