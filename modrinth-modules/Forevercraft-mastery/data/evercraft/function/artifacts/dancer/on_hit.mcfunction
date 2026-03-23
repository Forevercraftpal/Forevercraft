# Dancer — Heal on Hit Passive
# Fires on player_hurt_entity with dancer gauntlet in mainhand
# 2.5% per tier per gauntlet, both hands additive

# Revoke for re-trigger
advancement revoke @s only evercraft:artifacts/dancer/hit_trigger

# Must be active dancer
execute unless entity @s[tag=ec.dn_active] run return 0

# === CALCULATE HEAL CHANCE (per 1000) ===
scoreboard players set @s ec.var 0

# Mainhand contribution: T1=25, T2=50, T3=75, T4=100, T5=125, T6=150
execute if items entity @s weapon.mainhand *[custom_data~{tier:"common",dancer:true}] run scoreboard players add @s ec.var 25
execute if items entity @s weapon.mainhand *[custom_data~{tier:"uncommon",dancer:true}] run scoreboard players add @s ec.var 50
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare",dancer:true}] run scoreboard players add @s ec.var 75
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate",dancer:true}] run scoreboard players add @s ec.var 100
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite",dancer:true}] run scoreboard players add @s ec.var 125
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical",dancer:true}] run scoreboard players add @s ec.var 150

# Offhand contribution
execute if items entity @s weapon.offhand *[custom_data~{tier:"common",dancer:true}] run scoreboard players add @s ec.var 25
execute if items entity @s weapon.offhand *[custom_data~{tier:"uncommon",dancer:true}] run scoreboard players add @s ec.var 50
execute if items entity @s weapon.offhand *[custom_data~{tier:"rare",dancer:true}] run scoreboard players add @s ec.var 75
execute if items entity @s weapon.offhand *[custom_data~{tier:"ornate",dancer:true}] run scoreboard players add @s ec.var 100
execute if items entity @s weapon.offhand *[custom_data~{tier:"exquisite",dancer:true}] run scoreboard players add @s ec.var 125
execute if items entity @s weapon.offhand *[custom_data~{tier:"mythical",dancer:true}] run scoreboard players add @s ec.var 150

# === ROLL ===
execute store result score #roll ec.var run random value 1..1000

# === HEAL ON SUCCESS (half heart) ===
execute if score #roll ec.var <= @s ec.var run effect give @s instant_health 1 0 true
execute if score #roll ec.var <= @s ec.var run particle minecraft:heart ~ ~2 ~ 0.3 0.2 0.3 0 1
execute if score #roll ec.var <= @s ec.var run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.3 2.0

# === Crimson Tempo (Red Gauntlet only) — heal proc → +10% attack speed (stacks to 30%) ===
execute if score #roll ec.var <= @s ec.var if items entity @s weapon.mainhand *[custom_data~{artifact:"red_gauntlet"}] run function evercraft:artifacts/abilities/crimson_tempo
execute if score #roll ec.var <= @s ec.var if items entity @s weapon.offhand *[custom_data~{artifact:"red_gauntlet"}] run function evercraft:artifacts/abilities/crimson_tempo
