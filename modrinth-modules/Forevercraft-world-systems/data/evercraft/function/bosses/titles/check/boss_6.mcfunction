# World Boss — Title check for Nightmare
# Called as participant after kill counter incremented

# Milestone 1: 10 kills → Nightmare Slayer (ID 21)
execute if score @s wb.k6 matches 10 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Nightmare Slayer",color:"light_purple",bold:true}]
execute if score @s wb.k6 matches 10 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 2: 25 kills → Nightmare Conqueror (ID 22)
execute if score @s wb.k6 matches 25 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Nightmare Conqueror",color:"light_purple",bold:true}]
execute if score @s wb.k6 matches 25 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 3: 50 kills → Nightmare Vanquisher (ID 23)
execute if score @s wb.k6 matches 50 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Nightmare Vanquisher",color:"light_purple",bold:true}]
execute if score @s wb.k6 matches 50 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Milestone 4: 100 kills → Nightmare Nemesis (ID 24)
execute if score @s wb.k6 matches 100 run tellraw @s [{text:"[Title] ",color:"gold"},{text:"NEW! ",color:"gold",bold:true},{text:"Nightmare Nemesis",color:"light_purple",bold:true}]
execute if score @s wb.k6 matches 100 run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5
execute if score @s wb.k6 matches 100 run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.3 30 force @s
