# Chain Ignition — Golden Sword of Fire Enhancement (Ornate)
# On kill: If the slain mob was on fire, ignite the nearest other mob within 5 blocks
advancement revoke @s only evercraft:artifacts/abilities/fire_aspect_kill_trigger

# Find the nearest mob (not the dead one — it's gone) and set it on fire
# The killed mob is already removed, so nearest living mob within 5 blocks gets ignited
execute at @s as @e[type=!player,type=!#evercraft:fire_immune,distance=..5,limit=1,sort=nearest] run data merge entity @s {Fire:80s}

# Visual/audio feedback
execute at @s as @e[type=!player,type=!#evercraft:fire_immune,distance=..5,limit=1,sort=nearest] at @s run particle flame ~ ~0.5 ~ 0.3 0.5 0.3 0.05 15
execute at @s run particle lava ~ ~1 ~ 0.5 0.5 0.5 0.02 5
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 0.6 1.2
title @s actionbar {text:"Chain Ignition!",color:"#FF6600",bold:true}

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
