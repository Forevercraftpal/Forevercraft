# Competition — Pick Type (random 1-6)

execute store result score #comp_day_type ec.var run random value 1..6

# Announce at dawn
execute if score #comp_day_type ec.var matches 1 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Today's Competition: ",color:"yellow"},{text:"Cooking Contest",color:"aqua",bold:true},{text:" — starts at noon!",color:"yellow"}]
execute if score #comp_day_type ec.var matches 2 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Today's Competition: ",color:"yellow"},{text:"Mining Rush",color:"aqua",bold:true},{text:" — starts at noon!",color:"yellow"}]
execute if score #comp_day_type ec.var matches 3 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Today's Competition: ",color:"yellow"},{text:"Forging Championship",color:"aqua",bold:true},{text:" — starts at noon!",color:"yellow"}]
execute if score #comp_day_type ec.var matches 4 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Today's Competition: ",color:"yellow"},{text:"Prospector's Race",color:"aqua",bold:true},{text:" — starts at noon!",color:"yellow"}]
execute if score #comp_day_type ec.var matches 5 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Today's Competition: ",color:"yellow"},{text:"Foraging Frenzy",color:"aqua",bold:true},{text:" — starts at noon!",color:"yellow"}]
execute if score #comp_day_type ec.var matches 6 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Today's Competition: ",color:"yellow"},{text:"Fishing Derby+",color:"aqua",bold:true},{text:" — starts at noon!",color:"yellow"}]

playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 1.5
