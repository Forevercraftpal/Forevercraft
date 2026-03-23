# Arbiter — Enter Phase 2: Trial by Agility

# Reset cooldowns
scoreboard players set #rd_arb_blast_cd ec.var 0
scoreboard players set #rd_arb_zone_timer ec.var 0
scoreboard players set #rd_arb_zone_radius ec.var 15

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"Combat alone does not prove your worth. Now face the winds of judgment.\"","color":"aqua","italic":true}]

# VFX — wind eruption
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:cloud ~ ~1 ~ 4 2 4 0.2 50
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.wind_charge.wind_burst hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.6
