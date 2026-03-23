# Dragon's Fury — Dragonmaster Sword Enhancement (Mythical)
# Fire breath cone: 4 fire damage to mobs in front of player (3 blocks)

# AoE fire damage in cone (using local coordinates to hit mobs in front)
execute at @s positioned ^ ^ ^1 as @e[type=!player,type=!item,distance=..3] run damage @s 4 minecraft:on_fire
execute at @s positioned ^ ^ ^1 as @e[type=!player,type=!item,distance=..3] run data merge entity @s {Fire:80s}

# Fire breath visual — flame particles in a cone
execute at @s run particle flame ^ ^ ^1 0.3 0.3 0.3 0.05 10
execute at @s run particle flame ^ ^ ^2 0.5 0.4 0.5 0.05 15
execute at @s run particle flame ^ ^ ^3 0.8 0.5 0.8 0.05 20
execute at @s run particle small_flame ^ ^ ^1.5 0.4 0.3 0.4 0.08 12

# Audio + actionbar
title @s actionbar {text:"Dragon's Fury!",color:"#FF4500",bold:true}
playsound minecraft:entity.ender_dragon.growl player @a[distance=..16] ~ ~ ~ 0.4 1.5
playsound minecraft:entity.blaze.shoot player @a[distance=..16] ~ ~ ~ 0.6 0.8
