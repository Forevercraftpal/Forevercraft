# Chef's Touch — Result: CHARRED (Quality 0-3)
# -50% buff duration
tellraw @s [{text:"  ","color":"white"},{"text":"✗ CHARRED ","color":"dark_red","bold":true},{"text":"— Buff duration halved","color":"red"}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.8 0.6
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.3 0.3 0.3 0.02 10
