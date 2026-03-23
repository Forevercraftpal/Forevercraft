# World Boss — Title check for Infernal Titan
# Called as participant after kill counter incremented

# Milestone 1: 10 kills → Infernal Titan Slayer (ID 25)
execute if score @s wb.k7 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Infernal Titan Slayer",color:"red",bold:true}]
execute if score @s wb.k7 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 25 kills → Infernal Titan Conqueror (ID 26)
execute if score @s wb.k7 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Infernal Titan Conqueror",color:"red",bold:true}]
execute if score @s wb.k7 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 50 kills → Infernal Titan Vanquisher (ID 27)
execute if score @s wb.k7 matches 50 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Infernal Titan Vanquisher",color:"red",bold:true}]
execute if score @s wb.k7 matches 50 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 100 kills → Infernal Titan Nemesis (ID 28)
execute if score @s wb.k7 matches 100 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Infernal Titan Nemesis",color:"red",bold:true}]
execute if score @s wb.k7 matches 100 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k7 matches 100 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
