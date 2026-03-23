# Grand Illusionist — Evoker Fang Line
# Spawns a line of evoker fangs toward nearest player

execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet positioned ^ ^ ^1 run summon evoker_fangs ~ ~ ~
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet positioned ^ ^ ^2 run summon evoker_fangs ~ ~ ~
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet positioned ^ ^ ^3 run summon evoker_fangs ~ ~ ~
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet positioned ^ ^ ^4 run summon evoker_fangs ~ ~ ~
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet positioned ^ ^ ^5 run summon evoker_fangs ~ ~ ~

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.evoker.prepare_attack hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.0
