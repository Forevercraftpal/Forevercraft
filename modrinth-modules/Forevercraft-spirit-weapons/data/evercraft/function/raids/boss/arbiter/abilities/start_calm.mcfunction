# Arbiter — Start Calm (Eye of the Storm)
# 40-tick window where boss is vulnerable (3x damage)

# Visual indicator — boss glows
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect give @s glowing 3 0 true

# Remove boss armor temporarily (3x vulnerability)
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:raid_boss/calm -20.0 add_value

# Announce
tellraw @a[tag=ec.rd_participant] [{"text":"  ✦ ","color":"green"},{"text":"The Eye of the Storm! Strike now!","color":"green","bold":true}]

# VFX — calm
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:happy_villager ~ ~1 ~ 2 1 2 0.1 10
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:block.beacon.activate hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.2
