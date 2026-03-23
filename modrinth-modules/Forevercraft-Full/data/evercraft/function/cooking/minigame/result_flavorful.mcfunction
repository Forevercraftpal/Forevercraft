# Chef's Touch — Result: FLAVORFUL (Quality 8-11)
# +25% buff duration
tellraw @s [{text:"  ","color":"white"},{"text":"★ FLAVORFUL ","color":"green","bold":true},{"text":"— +25% buff duration!","color":"yellow"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.5
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0.1 10
