# World Boss — Title check for Earthshaker
# Called as participant after kill counter incremented

# Milestone 1: 10 kills → Earthshaker Slayer (ID 17)
execute if score @s wb.k5 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Earthshaker Slayer",color:"dark_green",bold:true}]
execute if score @s wb.k5 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 25 kills → Earthshaker Conqueror (ID 18)
execute if score @s wb.k5 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Earthshaker Conqueror",color:"dark_green",bold:true}]
execute if score @s wb.k5 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 50 kills → Earthshaker Vanquisher (ID 19)
execute if score @s wb.k5 matches 50 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Earthshaker Vanquisher",color:"dark_green",bold:true}]
execute if score @s wb.k5 matches 50 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 100 kills → Earthshaker Nemesis (ID 20)
execute if score @s wb.k5 matches 100 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Earthshaker Nemesis",color:"dark_green",bold:true}]
execute if score @s wb.k5 matches 100 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k5 matches 100 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
