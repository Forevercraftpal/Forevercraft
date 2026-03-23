# Consume Crystalized Dream Droppings - Permanently increases player's dream rate by +1
# Triggered by advancement: evercraft:items/consume_dream_droppings
# Hard limit: 1 per player

# Revoke advancement so it can trigger again (for the rejection message)
advancement revoke @s only evercraft:items/consume_dream_droppings

# Block if already consumed (hard 1-per-player limit)
execute if score @s ec.droppings_count matches 1.. run tellraw @s [{text:"",color:"white"},{text:"✦ ",color:"dark_gray"},{text:"The droppings have no further effect...",color:"gray",italic:true}]
execute if score @s ec.droppings_count matches 1.. run tellraw @s [{text:"  You have already consumed Crystalized Dream Droppings.",color:"dark_gray"}]
execute if score @s ec.droppings_count matches 1.. run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.5 0.5
execute if score @s ec.droppings_count matches 1.. run return 0

# First-time consumption — apply permanent +1 luck
scoreboard players set @s ec.droppings_count 1

# Apply permanent luck modifier
attribute @s luck modifier add evercraft:dream_droppings_bonus 1 add_value

# Visual and audio feedback
particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.05 50 force @s
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 30 force @s
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 0.8
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 1.2

# Notify the player
tellraw @s [{text:"",color:"white"},{text:"✦ ",color:"dark_purple"},{text:"CRYSTALIZED DREAM DROPPINGS CONSUMED",color:"light_purple",bold:true},{text:" ✦",color:"dark_purple"}]
tellraw @s [{text:"  Your dream rate has permanently increased by ",color:"gray"},{text:"+1",color:"aqua",bold:true},{text:"!",color:"gray"}]

# Show current total dream rate
execute store result score @s ec.temp run attribute @s luck get 1
tellraw @s [{text:"  Current Dream Rate: ",color:"gray"},{score:{name:"@s",objective:"ec.temp"},color:"gold",bold:true}]
