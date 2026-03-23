# Dream Journal — Failed/incomplete dream entries (5 random)
execute store result score #dj_roll ec.temp run random value 1..5

execute if score #dj_roll ec.temp matches 1 run tellraw @s [{text:"  ",color:"gray"},{text:"The dream slipped through my fingers like smoke.",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 1 run tellraw @s [{text:"  ",color:"gray"},{text:"I remember nothing but the feeling of falling.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 2 run tellraw @s [{text:"  ",color:"gray"},{text:"I woke too soon. The realm was not finished with",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 2 run tellraw @s [{text:"  ",color:"gray"},{text:"me, but I was finished with it.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 3 run tellraw @s [{text:"  ",color:"gray"},{text:"A restless night. The dream offered its hand, but",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 3 run tellraw @s [{text:"  ",color:"gray"},{text:"I could not hold on.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 4 run tellraw @s [{text:"  ",color:"gray"},{text:"The darkness swallowed me before I could see what",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 4 run tellraw @s [{text:"  ",color:"gray"},{text:"lay at the dream's heart. Next time.",color:"#D4A574",italic:true}]

execute if score #dj_roll ec.temp matches 5 run tellraw @s [{text:"  ",color:"gray"},{text:"Fragments of purple light. A voice calling. Then",color:"#D4A574",italic:true}]
execute if score #dj_roll ec.temp matches 5 run tellraw @s [{text:"  ",color:"gray"},{text:"silence. The dream faded before it began.",color:"#D4A574",italic:true}]

tellraw @s [{text:"  ",color:"gray"},{text:"— Faded Dream",color:"#7B1FA2"}]
