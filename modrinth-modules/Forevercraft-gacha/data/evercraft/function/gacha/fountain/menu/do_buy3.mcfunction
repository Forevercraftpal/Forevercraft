# Exchange buy: Awakening Stone for 15 Dreamdust
# Runs as @s = player
execute unless score @s ec.dreamdust matches 15.. run return run tellraw @s [{text:"\u25C6 ",color:"gray"},{text:"Not enough Dreamdust! Need 15.",color:"red"}]
scoreboard players remove @s ec.dreamdust 15
give @s minecraft:stick[item_model="minecraft:amethyst_cluster",custom_name={text:"Awakening Stone",color:"light_purple",italic:false},custom_data={awakening_stone:true,tier:"common"}] 1
tellraw @s [{text:"\u25C6 ",color:"#E0B0FF"},{text:"Purchased ",color:"gray"},{text:"Awakening Stone",color:"light_purple"},{text:"!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.3
