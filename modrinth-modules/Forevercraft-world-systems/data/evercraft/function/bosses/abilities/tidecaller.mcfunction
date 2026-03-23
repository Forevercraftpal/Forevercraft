# Tidecaller — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Slowness I aura (10 blocks)
execute if score #wb_phase ec.var matches 1 run effect give @a[tag=wb.participant,distance=..10] slowness 3 0 true

# Phase 2: Slowness I aura + guardian support (guardians spawned in phase transition)
execute if score #wb_phase ec.var matches 2 run effect give @a[tag=wb.participant,distance=..10] slowness 3 0 true
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..12] mining_fatigue 5 1 true
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1.0 1.0
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:bubble ~ ~1 ~ 2 1 2 0.1 20
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 15

# Phase 3: Whirlpool pull (TP players toward boss) every 10s + continuous slowness
execute if score #wb_phase ec.var matches 3 run effect give @a[tag=wb.participant,distance=..10] slowness 3 1 true
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 as @a[tag=wb.participant,distance=3..15] at @s facing entity @e[tag=wb.boss,limit=1] feet positioned ^ ^ ^1.5 run tp @s ~ ~ ~
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.generic.splash master @a ~ ~ ~ 2.0 0.5
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:bubble_pop ~ ~1 ~ 3 1 3 0.1 40
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run tellraw @a[tag=wb.participant,distance=..15] [{text:"",color:"dark_aqua"},{text:"The whirlpool pulls you in!",color:"aqua",italic:true}]
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Phase 4: Tidal crush — Slowness II + Mining Fatigue I
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..10] slowness 3 1 true
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..10] mining_fatigue 3 0 true
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:bubble_column_up ~ ~1 ~ 5 2 5 0.1 30
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1.5 0.5
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Ambient particles
particle minecraft:bubble ~ ~1 ~ 0.5 0.5 0.5 0.02 5
particle minecraft:dripping_water ~ ~2 ~ 0.3 0.3 0.3 0.01 3
