# Critical Edge — Katana + Iai Draw Enhancement
# Base: +3 bonus damage on critical hits
# Enhancement: Sneaking 2+ seconds activates Iai stance. Next crit from Iai = 3x damage + cherry blossom particles.
advancement revoke @s only evercraft:artifacts/abilities/critical_edge_trigger

# Check for Iai Draw stance (set by tick check in accessories/tick)
execute if entity @s[tag=ec.iai_ready] run tag @s remove ec.iai_ready
execute if entity @s[tag=!ec.iai_fired] run effect give @s strength 1 0 false
execute if entity @s[tag=!ec.iai_fired] run particle crit ~ ~1 ~ 0.5 0.5 0.5 0.1 15
execute if entity @s[tag=!ec.iai_fired] run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 1.2

# Iai Draw — 3x crit (Strength III for 1 tick = massive bonus)
execute if entity @s[tag=ec.iai_fired] run effect give @s strength 1 2 false
execute if entity @s[tag=ec.iai_fired] at @s run particle cherry_leaves ~ ~1 ~ 1 1 1 0.05 30
execute if entity @s[tag=ec.iai_fired] at @s run particle crit ~ ~1 ~ 0.8 0.8 0.8 0.2 20
execute if entity @s[tag=ec.iai_fired] run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 1.8
execute if entity @s[tag=ec.iai_fired] run playsound minecraft:entity.player.attack.knockback player @s ~ ~ ~ 0.6 1.5
execute if entity @s[tag=ec.iai_fired] run title @s actionbar {text:"Iai Draw!",color:"#FF69B4",bold:true}
execute if entity @s[tag=ec.iai_fired] run tag @s remove ec.iai_fired

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
