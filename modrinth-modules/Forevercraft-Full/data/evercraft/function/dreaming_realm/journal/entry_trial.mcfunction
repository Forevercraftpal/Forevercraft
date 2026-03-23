# Dream Journal — Dreamer's Trial entries (5 random)
execute store result score #dj_roll ec.temp run random value 1..5

execute if score #dj_roll ec.temp matches 1 run tellraw @s [{text:"  ",color:"gray"},{text:"Fragments of a shattered truth lay scattered across",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 1 run tellraw @s [{text:"  ",color:"gray"},{text:"the void. I gathered them like fallen stars.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 2 run tellraw @s [{text:"  ",color:"gray"},{text:"The trial demanded everything — cunning, courage,",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 2 run tellraw @s [{text:"  ",color:"gray"},{text:"and a willingness to face what I feared most.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 3 run tellraw @s [{text:"  ",color:"gray"},{text:"Five fragments, five truths. Each one burned like",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 3 run tellraw @s [{text:"  ",color:"gray"},{text:"a cold flame when I touched it.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 4 run tellraw @s [{text:"  ",color:"gray"},{text:"At the trial's end, the dream whispered a name.",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 4 run tellraw @s [{text:"  ",color:"gray"},{text:"My own. But spoken by something far older.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 5 run tellraw @s [{text:"  ",color:"gray"},{text:"The final fragment showed me a reflection — not",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 5 run tellraw @s [{text:"  ",color:"gray"},{text:"of who I am, but of who I might become.",color:"#D4A574",italic:true}]

tellraw @s [{text:"  ",color:"gray"},{text:"— Dreamer's Trial",color:"#9C27B0"}]
