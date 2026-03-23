# Dream Journal — Dream Guardians entries (5 random)
execute store result score #dj_roll ec.temp run random value 1..5

execute if score #dj_roll ec.temp matches 1 run tellraw @s [{text:"  ",color:"gray"},{text:"They rose from the mist — ancient sentinels of a",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 1 run tellraw @s [{text:"  ",color:"gray"},{text:"forgotten purpose. I fought shadows of myself.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 2 run tellraw @s [{text:"  ",color:"gray"},{text:"Each wave was harder than the last. The guardians",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 2 run tellraw @s [{text:"  ",color:"gray"},{text:"tested my resolve, not just my blade.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 3 run tellraw @s [{text:"  ",color:"gray"},{text:"Spectral warriors circled me in silence. When I",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 3 run tellraw @s [{text:"  ",color:"gray"},{text:"struck the last one down, it bowed before fading.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 4 run tellraw @s [{text:"  ",color:"gray"},{text:"The guardians moved like water — fluid, relentless.",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 4 run tellraw @s [{text:"  ",color:"gray"},{text:"Victory tasted like starlight on my tongue.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 5 run tellraw @s [{text:"  ",color:"gray"},{text:"I dreamed of battle in a void of amethyst. The",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 5 run tellraw @s [{text:"  ",color:"gray"},{text:"guardians fell, but they will return. They always do.",color:"#D4A574",italic:true}]

tellraw @s [{text:"  ",color:"gray"},{text:"— Dream Guardians",color:"#9C27B0"}]
