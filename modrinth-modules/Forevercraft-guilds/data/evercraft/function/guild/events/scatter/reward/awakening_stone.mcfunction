# Guild Scatter Node Reward — Awakening Stone (rare)
# @s = player who clicked node

give @s minecraft:stick[item_model="minecraft:amethyst_cluster",custom_name={text:"Awakening Stone",color:"light_purple",italic:false},custom_data={awakening_stone:true,tier:"common"}] 1
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.8 1.2
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You found an ",color:"gray"},{text:"Awakening Stone",color:"light_purple"},{text:"!",color:"gray"}]
function evercraft:guild/contribution/add {amount:10}
