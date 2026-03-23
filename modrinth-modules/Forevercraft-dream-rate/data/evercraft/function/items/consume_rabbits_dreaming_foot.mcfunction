# Consume Rabbit's Dreaming Foot — Permanently grants +10% Jump Boost & +1.0 Dream Rate
# Triggered by advancement: evercraft:items/consume_rabbits_foot
# No single-use restriction needed — consuming destroys the item (cost is the item itself)

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:items/consume_rabbits_foot

# Apply permanent +10% jump strength modifier
attribute @s jump_strength modifier add evercraft:rabbits_dreaming_foot 0.1 add_value

# Apply permanent +1.0 dream rate (luck) modifier
attribute @s luck modifier add evercraft:rabbits_dreaming_foot_luck 1 add_value

# Visual and audio feedback
particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.05 50 force @s
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 30 force @s
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 0.8
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 1.2

# Notify the player
tellraw @s [{text:"",color:"white"},{text:"✦ ",color:"green"},{text:"RABBIT'S DREAMING FOOT CONSUMED",color:"dark_green",bold:true},{text:" ✦",color:"green"}]
tellraw @s [{text:"  Permanently gained ",color:"gray"},{text:"+10% Jump Boost",color:"aqua",bold:true},{text:" & ",color:"gray"},{text:"+1.0 Dream Rate",color:"aqua",bold:true},{text:"!",color:"gray"}]

# Show current total dream rate
execute store result score @s ec.temp run attribute @s luck get 1
tellraw @s [{text:"  Current Dream Rate: ",color:"gray"},{score:{name:"@s",objective:"ec.temp"},color:"gold",bold:true}]
