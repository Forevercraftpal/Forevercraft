# Arbiter — End Calm (Storm resumes)
# Boss returns to full defense, tornado resumes

# Remove vulnerability modifier
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run attribute @s armor modifier remove evercraft:raid_boss/calm

# Remove glowing
execute as @e[type=!player,tag=ec.rd_boss,limit=1] run effect clear @s glowing

# Announce
tellraw @a[tag=ec.rd_participant] [{"text":"  ⚠ ","color":"red"},{"text":"The storm returns!","color":"red"}]

# VFX — storm resumption
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:cloud ~ ~1 ~ 3 2 3 0.3 30
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.lightning_bolt.impact hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8
