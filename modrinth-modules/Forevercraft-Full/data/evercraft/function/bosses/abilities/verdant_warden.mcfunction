# Verdant Warden — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Poison I cloud (8 blocks, 5s duration)
execute if score #wb_phase ec.var matches 1 run effect give @a[tag=wb.participant,distance=..8] poison 5 0 true

# Phase 2: Vine snare — Slowness II pulse every 10s
execute if score #wb_phase ec.var matches 2 run effect give @a[tag=wb.participant,distance=..8] poison 5 0 true
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..10] slowness 3 1 true
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:block.grass.break master @a ~ ~ ~ 1.5 0.5
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:happy_villager ~ ~1 ~ 3 1 3 0.1 20
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Phase 3: Spore burst — Nausea + Poison II every 12s
execute if score #wb_phase ec.var matches 3 run effect give @a[tag=wb.participant,distance=..8] poison 5 1 true
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..10] nausea 5 0
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 1.5 0.4
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:spore_blossom_air ~ ~1 ~ 3 2 3 0.1 50
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 12

# Phase 4: Poison II aura + vine snare (Slowness II)
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..10] poison 3 1 true
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..10] slowness 3 1 true

# Ambient particles
particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.02 3
particle minecraft:composter ~ ~0.5 ~ 0.3 0.2 0.3 0.01 5
