# Gilded Tyrant — Piglin Add Death Check (Phase 2 mechanic)
# Called when a piglin add takes damage — if health low, kill and heal boss

# Check if piglin health is critically low (6 HP or less — about to die)
execute store result score #rd_temp ec.var run data get entity @s Health
execute unless score #rd_temp ec.var matches ..6 run return 0

# Kill the piglin and heal boss
kill @s

# Heal boss 10 HP
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s instant_health 1 0 true

# Feedback — boss heals from piglin death
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.1 5
tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"The Tyrant absorbs fallen piglin essence!","color":"red","italic":true}]
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.witch.drink hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.8 1.2
