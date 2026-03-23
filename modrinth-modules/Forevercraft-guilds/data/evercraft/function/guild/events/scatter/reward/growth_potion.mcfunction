# Guild Scatter Node Reward — Growth Potion
# @s = player who clicked node

give @s minecraft:lingering_potion[potion_contents={potion:"minecraft:thick",custom_color:5635925,custom_effects:[{id:"minecraft:instant_health",amplifier:0,duration:1,show_particles:true}]},custom_name={text:"Growth Serum",color:"dark_green",italic:true},lore=[{text:"Rare",color:"aqua",italic:false},{text:""},{text:"Grows crops +3 stages in area",color:"blue",italic:false},{text:"Throw on crops to accelerate growth",color:"gray",italic:false},{text:"(Works like area bone meal)",color:"dark_gray",italic:false}],max_stack_size=16] 1
playsound minecraft:item.bottle.fill player @s ~ ~ ~ 0.5 1.0
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You found a ",color:"gray"},{text:"Growth Serum",color:"dark_green"},{text:"!",color:"gray"}]
function evercraft:guild/contribution/add {amount:5}
