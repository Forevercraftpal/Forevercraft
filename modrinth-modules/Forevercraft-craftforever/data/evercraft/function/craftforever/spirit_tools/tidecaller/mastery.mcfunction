# Tidecaller Mastery — "Maelstrom" (120s CD)
# 30-second extreme fishing frenzy buff

scoreboard players set @s ec.st_cd 2400
scoreboard players set @s ec.st_mastery_t 600

title @s actionbar [{"text":"Maelstrom","color":"aqua","bold":true}]
playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 0.3 1.5
playsound minecraft:ambient.underwater.enter master @s ~ ~ ~ 1 0.8

# Apply extreme fishing buffs for 30s
effect give @s luck 30 9 false
effect give @s conduit_power 30 2 false
effect give @s dolphins_grace 30 0 false

# Spawn a whirlpool marker at player's position
summon marker ~ ~ ~ {Tags:["ec_st_whirlpool","ec.entity"]}

# Schedule whirlpool ticks
schedule function evercraft:craftforever/spirit_tools/tidecaller/whirlpool_tick 2s

# VFX
particle minecraft:bubble_column_up ~ ~ ~ 3 0.5 3 0.1 30
particle minecraft:nautilus ~ ~1 ~ 2 1 2 0.3 20

# Grant crafting affinity XP: 100 for mastery use
function evercraft:craft_affinity/grant {class_id:5, delta:100}
