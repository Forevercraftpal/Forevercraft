# Dream Journal — Memory Maze entries (5 random)
execute store result score #dj_roll ec.temp run random value 1..5

execute if score #dj_roll ec.temp matches 1 run tellraw @s [{text:"  ",color:"gray"},{text:"The colors swirled before me in patterns I swore",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 1 run tellraw @s [{text:"  ",color:"gray"},{text:"I had seen before. Each step felt like memory.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 2 run tellraw @s [{text:"  ",color:"gray"},{text:"A maze of light stretched out endlessly. I followed",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 2 run tellraw @s [{text:"  ",color:"gray"},{text:"the echoes of a song only I could hear.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 3 run tellraw @s [{text:"  ",color:"gray"},{text:"The walls shifted with every blink. I traced the",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 3 run tellraw @s [{text:"  ",color:"gray"},{text:"sequence from instinct, not thought.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 4 run tellraw @s [{text:"  ",color:"gray"},{text:"Red, blue, green, yellow — the dream spoke in",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 4 run tellraw @s [{text:"  ",color:"gray"},{text:"colors. I answered in kind.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 5 run tellraw @s [{text:"  ",color:"gray"},{text:"I stood at the heart of a crystalline labyrinth.",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 5 run tellraw @s [{text:"  ",color:"gray"},{text:"The path revealed itself one hue at a time.",color:"#D4A574",italic:true}]

tellraw @s [{text:"  ",color:"gray"},{text:"— Memory Maze",color:"#9C27B0"}]
