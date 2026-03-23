# Ender Architect — Ability Tick (every 1s, as boss entity at boss position)

# Phase 1: Summon temporary shulkers that fire bullets every 10s
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run summon shulker ~3 ~2 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run summon shulker ~-3 ~2 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1.5 0.8
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run particle minecraft:end_rod ~ ~2 ~ 2 1 2 0.05 20
execute if score #wb_phase ec.var matches 1 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 10

# Phase 2: Levitation field — permanent Levitation I aura (8 blocks) + shulker barrage
execute if score #wb_phase ec.var matches 2 run effect give @a[tag=wb.participant,distance=..8] levitation 3 0 true
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run summon shulker ~2 ~3 ~2 {Tags:["wb.minion"],PersistenceRequired:1b}
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1.5 0.6
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run particle minecraft:end_rod ~ ~2 ~ 3 1 3 0.05 30
execute if score #wb_phase ec.var matches 2 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 8

# Phase 3: Fortress mode — Resistance I self-buff + continued levitation aura
execute if score #wb_phase ec.var matches 3 run effect give @a[tag=wb.participant,distance=..8] levitation 3 0 true
execute if score #wb_phase ec.var matches 3 run effect give @s resistance 3 0 true
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run summon shulker ~3 ~3 ~3 {Tags:["wb.minion"],PersistenceRequired:1b}
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run summon shulker ~-3 ~3 ~-3 {Tags:["wb.minion"],PersistenceRequired:1b}
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1.5 0.5
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run particle minecraft:end_rod ~ ~2 ~ 3 2 3 0.05 40
execute if score #wb_phase ec.var matches 3 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 6

# Phase 4: Architect's fury — teleport random player nearby
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run spreadplayers ~ ~ 3 8 false @a[tag=wb.participant,distance=..15,sort=random,limit=1]
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run particle minecraft:end_rod ~ ~2 ~ 8 3 8 0.08 40
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 2.0 0.5
execute if score #wb_phase ec.var matches 4 if score #wb_ability_cd ec.var matches 0 run scoreboard players set #wb_ability_cd ec.var 8

# Ambient particles
particle minecraft:end_rod ~ ~2 ~ 0.5 0.5 0.5 0.02 5
particle minecraft:portal ~ ~1 ~ 0.3 0.5 0.3 0.5 3
