# Guild Scatter Node Reward — Forever Coins
# @s = player who clicked node

scoreboard players add @s ec.coins 2
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.8
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You found ",color:"gray"},{text:"2 Forever Coins",color:"#E0B0FF",bold:true},{text:"!",color:"gray"}]
function evercraft:guild/contribution/add {amount:10}
