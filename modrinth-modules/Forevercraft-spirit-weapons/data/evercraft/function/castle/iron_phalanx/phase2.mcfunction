# The Iron Phalanx — Phase 2: The Testudo (66%-33% HP)
# Bearers cluster around boss, scaling DR based on bearer count
# Boss heals bearers every 200 ticks, bearers thrust simultaneously

# === COUNT ALIVE BEARERS ===
execute store result score #ic_phalanx_bearers ec.var if entity @e[tag=ic.phalanx_bearer]

# === TESTUDO DAMAGE REDUCTION (scale by bearer count) ===
# 3+ bearers: Resistance IV (80% DR), 2: Resistance III (60%), 1: Resistance II (40%), 0: none
execute if score #ic_phalanx_bearers ec.var matches 3.. as @e[tag=ic.iron_phalanx,limit=1] run effect give @s resistance 2 3 true
execute if score #ic_phalanx_bearers ec.var matches 2..2 as @e[tag=ic.iron_phalanx,limit=1] run effect give @s resistance 2 2 true
execute if score #ic_phalanx_bearers ec.var matches 1..1 as @e[tag=ic.iron_phalanx,limit=1] run effect give @s resistance 2 1 true
execute if score #ic_phalanx_bearers ec.var matches 0 as @e[tag=ic.iron_phalanx,limit=1] run effect clear @s resistance

# === CLUSTER BEARERS AROUND BOSS (testudo formation) ===
execute as @e[tag=ic.iron_phalanx,limit=1] at @s run tp @e[tag=ic.phalanx_bearer,distance=5..] ~ ~ ~2

# === PHALANX RALLY — heal all bearers 10 HP every 200 ticks ===
execute if score #ic_phalanx_cd ec.var matches ..0 as @e[tag=ic.iron_phalanx,limit=1] at @s run effect give @e[tag=ic.phalanx_bearer,distance=..5] instant_health 1 0
execute if score #ic_phalanx_cd ec.var matches ..0 as @e[tag=ic.iron_phalanx,limit=1] at @s run particle heart ~ ~2 ~ 0.5 0.3 0.5 0.1 5
execute if score #ic_phalanx_cd ec.var matches ..0 as @e[tag=ic.iron_phalanx,limit=1] at @s run playsound minecraft:block.beacon.power_select master @a[distance=..20] ~ ~ ~ 0.6 1.5
execute if score #ic_phalanx_cd ec.var matches ..0 run scoreboard players set #ic_phalanx_cd ec.var 200

# === COORDINATED SPEAR THRUST (bearers attack nearest player every 80 ticks) ===
execute if score #ic_phalanx_bearer_cd ec.var matches ..0 as @e[tag=ic.phalanx_bearer] at @s run damage @a[tag=ic.player,distance=..3,limit=1,sort=nearest] 6 minecraft:mob_attack
execute if score #ic_phalanx_bearer_cd ec.var matches ..0 as @e[tag=ic.phalanx_bearer] at @s run playsound minecraft:entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 0.5 0.8
execute if score #ic_phalanx_bearer_cd ec.var matches ..0 run scoreboard players set #ic_phalanx_bearer_cd ec.var 80

# === RESUMMON BEARERS (every 400 ticks, max 6) ===
execute store result score #ic_phalanx_bearers ec.var if entity @e[tag=ic.phalanx_bearer]
execute if score #ic_phalanx_bearers ec.var matches ..5 if score #ic_phalanx_charge_cd ec.var matches ..0 run function evercraft:castle/iron_phalanx/spawn_bearers_p2
execute if score #ic_phalanx_charge_cd ec.var matches ..0 run scoreboard players set #ic_phalanx_charge_cd ec.var 400
