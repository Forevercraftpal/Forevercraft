# Called when player runs out of netherite blocks while absorbing
# Shows "incomplete" message and removes tag

tellraw @s [{text:"The ",color:"dark_purple"},{text:"Ancient Core",color:"gold",bold:true},{text:" has finished absorbing the materials... but it still seems incomplete.",color:"dark_purple"}]
playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 0.8
tag @s remove nc_absorbing
