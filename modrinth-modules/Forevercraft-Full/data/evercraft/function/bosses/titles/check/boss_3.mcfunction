# World Boss — Title check for Stormforged
# Called as participant after kill counter incremented

# Milestone 1: 10 kills → Stormforged Slayer (ID 9)
execute if score @s wb.k3 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stormforged Slayer",color:"yellow",bold:true}]
execute if score @s wb.k3 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 25 kills → Stormforged Conqueror (ID 10)
execute if score @s wb.k3 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stormforged Conqueror",color:"yellow",bold:true}]
execute if score @s wb.k3 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 50 kills → Stormforged Vanquisher (ID 11)
execute if score @s wb.k3 matches 50 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stormforged Vanquisher",color:"yellow",bold:true}]
execute if score @s wb.k3 matches 50 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 100 kills → Stormforged Nemesis (ID 12)
execute if score @s wb.k3 matches 100 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Stormforged Nemesis",color:"yellow",bold:true}]
execute if score @s wb.k3 matches 100 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k3 matches 100 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
