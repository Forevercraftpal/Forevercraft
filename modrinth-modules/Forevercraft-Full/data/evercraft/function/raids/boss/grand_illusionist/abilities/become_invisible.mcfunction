# Grand Illusionist — Become Invisible (Phase 2)
# Boss vanishes again, teleports to new position

execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s invisibility infinite 0 true
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s glowing

# Teleport to random position
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @e[type=marker,tag=rd.center,limit=1] run spreadplayers ~ ~ 3 15 false @s

tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"The Illusionist vanishes into the shadows...","color":"dark_gray","italic":true}]

execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:witch ~ ~1 ~ 1 0.5 1 0.1 15
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.enderman.teleport hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.6 1.5
