# Grand Illusionist — Become Visible (Phase 2)
# Boss briefly appears to attack

execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s invisibility
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s glowing 5 0 true

tellraw @a[tag=ec.rd_participant] [{"text":"  ✦ ","color":"gold"},{"text":"The Illusionist reveals itself!","color":"red"}]

execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.evoker.ambient hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~1 ~ 0 0 0 0 1
