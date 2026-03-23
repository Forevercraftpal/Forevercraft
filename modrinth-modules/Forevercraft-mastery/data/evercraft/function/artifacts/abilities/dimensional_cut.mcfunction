# Dimensional Cut — Zantetsuken Enhancement (Mythical)
# Teleports player 2 blocks behind nearest target
# Called from swing_t6 every 10th auto-swing

# Teleport behind nearest target (2 blocks behind where they're facing)
# Safety: only teleport if destination feet+head are clear (not solid blocks)
execute at @s as @e[type=!player,type=!item,distance=..5,limit=1,sort=nearest] at @s positioned ^ ^ ^-2 if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp @a[tag=ec.rg_swinger,limit=1] ~ ~ ~

# Visual/audio feedback
title @a[tag=ec.rg_swinger,limit=1] actionbar {text:"Dimensional Cut!",color:"#9B59B6",bold:true}
execute at @s run particle reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 30
execute at @s run particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 1 15
playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 0.7 1.5
playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 0.5 0.5
