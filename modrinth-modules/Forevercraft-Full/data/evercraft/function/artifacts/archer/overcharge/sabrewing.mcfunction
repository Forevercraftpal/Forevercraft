# Sabrewing — TEMPEST (Exquisite)
# Arrow Rain: 12 arrows rain in 6-block radius after 1s delay
# @s = player

# Store impact location in storage for the delayed rain
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/archer/overcharge/tempest_mark

# Feedback
playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.8 1.5
tellraw @s [{"text":"[Sabrewing] ","color":"light_purple"},{"text":"Tempest ","color":"yellow","bold":true},{"text":"— Arrow rain incoming!","color":"gold"}]
