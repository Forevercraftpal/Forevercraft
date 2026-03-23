# World Boss — Title check for Tidecaller
# Called as participant after kill counter incremented

# Milestone 1: 10 kills → Tidecaller Slayer (ID 13)
execute if score @s wb.k4 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Tidecaller Slayer",color:"aqua",bold:true}]
execute if score @s wb.k4 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 25 kills → Tidecaller Conqueror (ID 14)
execute if score @s wb.k4 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Tidecaller Conqueror",color:"aqua",bold:true}]
execute if score @s wb.k4 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 50 kills → Tidecaller Vanquisher (ID 15)
execute if score @s wb.k4 matches 50 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Tidecaller Vanquisher",color:"aqua",bold:true}]
execute if score @s wb.k4 matches 50 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 100 kills → Tidecaller Nemesis (ID 16)
execute if score @s wb.k4 matches 100 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Tidecaller Nemesis",color:"aqua",bold:true}]
execute if score @s wb.k4 matches 100 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k4 matches 100 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
