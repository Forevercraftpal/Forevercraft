# Hollow Sovereign — Check Shadow Respawn
# Respawn any dead fakes near the real boss

# Only run if there are dead fakes
execute unless entity @e[tag=ec.rd_hs_fake_dead] run return 0

# Teleport dead fakes back near the real boss and restore them
execute at @e[type=!player,tag=ec.rd_hs_real,limit=1] as @e[tag=ec.rd_hs_fake_dead] run tp @s ~3 ~ ~3
execute as @e[tag=ec.rd_hs_fake_dead] run effect clear @s invisibility
execute as @e[tag=ec.rd_hs_fake_dead] run tag @s remove ec.rd_hs_fake_dead

# VFX at respawn
execute as @e[tag=ec.rd_hs_fake] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute as @e[tag=ec.rd_hs_fake] at @s run playsound minecraft:entity.enderman.teleport hostile @a[tag=ec.rd_participant,distance=..15] ~ ~ ~ 0.8 0.6

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"The shadows reform...","color":"dark_purple","italic":true}]
