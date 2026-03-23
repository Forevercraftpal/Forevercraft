# Void Sovereign — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Levitation pulse (Levitation I 3s, 15 blocks) every 15s
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..15] levitation 3 0
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.5 0.5
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run particle minecraft:reverse_portal ~ ~1 ~ 3 1 3 0.1 30
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 15

# Phase 2: Teleport to random player every 5s + Blindness pulse every 15s cycle
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 at @a[tag=wb.participant,distance=..50,sort=random,limit=1] run tp @s ~ ~ ~
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.5 0.8
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:portal ~ ~1 ~ 1 1 1 0.5 30
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 5
# Blindness on cycle (every 3rd teleport = every 15s)
execute if score #wb_phase ec.var matches 2 if score #wb_timer ec.var matches 5 run effect give @a[tag=wb.participant,distance=..15] blindness 3 0
execute if score #wb_phase ec.var matches 2 if score #wb_timer ec.var matches 5 run scoreboard players set #wb_temp ec.var 0

# Phase 3: TP every 3s + End crystal summon (heals boss)
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 at @a[tag=wb.participant,distance=..50,sort=random,limit=1] run tp @s ~ ~ ~
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.5 1.0
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:portal ~ ~1 ~ 1 1 1 0.5 40
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 3
# Self-heal 2% max HP every 3s
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run effect give @s regeneration 3 0 true

# Phase 4: Void pull — Darkness + Levitation
execute if score #wb_phase ec.var matches 4 run effect give @a[tag=wb.participant,distance=..12] darkness 3 0 true
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run effect give @a[tag=wb.participant,distance=..10] levitation 2 0
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:reverse_portal ~ ~1 ~ 5 2 5 0.15 40
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 1.5 0.3
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Ambient particles
particle minecraft:reverse_portal ~ ~1.5 ~ 0.5 0.5 0.5 0.05 5
particle minecraft:portal ~ ~1 ~ 0.3 0.5 0.3 0.5 3
