# Evasion Dodge — Near-immunity for 1 tick via Resistance 5
effect give @s minecraft:resistance 1 4 true

# Visual feedback
particle minecraft:cloud ~ ~1 ~ 0.3 0.5 0.3 0.1 20 force
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 1.5

# Actionbar message
title @s actionbar {text:"Dodged!",color:"aqua",bold:true}

# Achievement tracking
scoreboard players add @s ach.dodge_count 1

# Synergy hook: trigger Battle Trance if combat synergy active
function evercraft:advantage/synergies/on_dodge

# Challenge hook: increment dodge counter for Ghost (4) / Shadow Step (22)
execute if score @s adv.chal_id matches 4 run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 22 run scoreboard players add @s adv.chal_prog 1

# === PRESTIGE ABILITY HOOKS ===
# Evasion P1: Shadow Counter — teleport behind nearest attacker (with collision checking)
execute if score @s adv.pres_evas matches 1.. at @s as @e[type=!player,type=!item,sort=nearest,limit=1,distance=..5] run tag @s add ec.kb
execute if score @s adv.pres_evas matches 1.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s adv.pres_evas matches 1.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s adv.pres_evas matches 1.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s adv.pres_evas matches 1.. as @e[tag=ec.kb] at @s facing entity @p feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @s ~ ~ ~
execute if score @s adv.pres_evas matches 1.. run tag @e[tag=ec.kb] remove ec.kb
execute if score @s adv.pres_evas matches 1.. run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 1.5

# Evasion P2: Vanishing Dodge — 2s invisibility on dodge
execute if score @s adv.pres_evas matches 2.. run effect give @s minecraft:invisibility 2 0 true

# Evasion P3: Perfect Evasion — 1s guaranteed dodge window
execute if score @s adv.pres_evas matches 3 run scoreboard players set @s adv.pa_evas3_tm 20
