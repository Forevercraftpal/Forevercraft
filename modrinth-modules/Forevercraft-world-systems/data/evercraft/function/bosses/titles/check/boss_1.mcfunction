# World Boss — Title check for Hollow King
# Called as participant after kill counter incremented

# Milestone 1: 10 kills → Hollow King Slayer (ID 1)
execute if score @s wb.k1 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Hollow King Slayer",color:"gray",bold:true}]
execute if score @s wb.k1 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 25 kills → Hollow King Conqueror (ID 2)
execute if score @s wb.k1 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Hollow King Conqueror",color:"gray",bold:true}]
execute if score @s wb.k1 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 50 kills → Hollow King Vanquisher (ID 3)
execute if score @s wb.k1 matches 50 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Hollow King Vanquisher",color:"gray",bold:true}]
execute if score @s wb.k1 matches 50 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 100 kills → Hollow King Nemesis (ID 4)
execute if score @s wb.k1 matches 100 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Hollow King Nemesis",color:"gray",bold:true}]
execute if score @s wb.k1 matches 100 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k1 matches 100 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
