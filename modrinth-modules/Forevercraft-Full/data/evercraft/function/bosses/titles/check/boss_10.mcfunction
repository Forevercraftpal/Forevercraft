# World Boss — Title check for Void Sovereign
# Called as participant after kill counter incremented

# Milestone 1: 10 kills → Void Sovereign Slayer (ID 37)
execute if score @s wb.k10 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Void Sovereign Slayer",color:"blue",bold:true}]
execute if score @s wb.k10 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 25 kills → Void Sovereign Conqueror (ID 38)
execute if score @s wb.k10 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Void Sovereign Conqueror",color:"blue",bold:true}]
execute if score @s wb.k10 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 50 kills → Void Sovereign Vanquisher (ID 39)
execute if score @s wb.k10 matches 50 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Void Sovereign Vanquisher",color:"blue",bold:true}]
execute if score @s wb.k10 matches 50 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 100 kills → Void Sovereign Nemesis (ID 40)
execute if score @s wb.k10 matches 100 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Void Sovereign Nemesis",color:"blue",bold:true}]
execute if score @s wb.k10 matches 100 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k10 matches 100 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
