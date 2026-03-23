# Foraging Bush: Cancel active gathering (moved too far)
# Run as player

bossbar set evercraft:forage_gather visible false
scoreboard players set @s ec.fg_picking 0
scoreboard players set @s ec.fg_progress 0
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You moved too far away...",color:"gray","italic":true}]
playsound minecraft:block.grass.break master @s ~ ~ ~ 0.4 0.6
