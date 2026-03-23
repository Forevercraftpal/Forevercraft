# Consume Wanderer's Dream Map - Permanently increases dream rate by +1
# Triggered by advancement: evercraft:items/consume_wanderers_dream_map

advancement revoke @s only evercraft:items/consume_wanderers_dream_map

execute if score @s ec.map_count matches 1.. run tellraw @s [{text:"",color:"white"},{text:"✦ ",color:"dark_gray"},{text:"The map has no effect...",color:"gray",italic:true}]
execute if score @s ec.map_count matches 1.. run tellraw @s [{text:"  You have already absorbed a Wanderer's Dream Map.",color:"dark_gray"}]
execute if score @s ec.map_count matches 1.. run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.5 0.5
execute if score @s ec.map_count matches 1.. run return 0

scoreboard players set @s ec.map_count 1
attribute @s luck modifier add evercraft:wanderers_dream_map_bonus 1 add_value

particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.05 50 force @s
particle minecraft:witch ~ ~1 ~ 0.3 0.5 0.3 0.02 30 force @s
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 0.8
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 0.5 1.2

tellraw @s [{text:"",color:"white"},{text:"✦ ",color:"dark_aqua"},{text:"WANDERER'S DREAM MAP CONSUMED",color:"dark_aqua",bold:true},{text:" ✦",color:"dark_aqua"}]
tellraw @s [{text:"  Your dream rate has permanently increased by ",color:"gray"},{text:"+1",color:"aqua",bold:true},{text:"!",color:"gray"}]

execute store result score @s ec.temp run attribute @s luck get 1
tellraw @s [{text:"  Current Dream Rate: ",color:"gray"},{score:{name:"@s",objective:"ec.temp"},color:"gold",bold:true}]
