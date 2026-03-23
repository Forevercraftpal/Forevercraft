# Called when player stops sneaking or switches items while absorbing
# Shows interrupted message and removes tag

tellraw @s [{text:"The ",color:"dark_purple"},{text:"Ancient Core's",color:"gold",bold:true},{text:" absorption has been interrupted...",color:"dark_purple"}]
playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 0.6
tag @s remove nc_absorbing
