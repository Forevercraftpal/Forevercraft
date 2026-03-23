# The Deepcrawler — Burrow Into Ground
# Boss becomes invisible and moves underground

scoreboard players set #rd_dc_above ec.var 0

# Make boss invisible and invulnerable while burrowed
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect give @s invisibility 10 0 true
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run effect give @s resistance 10 4 true

# Teleport boss below ground
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run tp @s ~ ~-10 ~

# VFX: burrow dust
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.5,0.4,0.3],scale:1.5} ~ ~10 ~ 2 0.5 2 0 30
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:block.gravel.break master @a[tag=ec.rd_participant] ~ ~10 ~ 1.5 0.4
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.silverfish.ambient master @a[tag=ec.rd_participant] ~ ~10 ~ 1.0 0.5
