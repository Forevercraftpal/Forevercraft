# Grand Forge — Give Forge Crystal to player
loot give @s loot evercraft:craftforever/forge_crystal
tellraw @s [{"text":""},{"text":"[Grand Forge] ","color":"green","bold":true},{"text":"A ","color":"gray"},{"text":"Forge Crystal","color":"green","bold":true},{"text":" materializes from the forge!","color":"gray"}]
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1.0 1.0
