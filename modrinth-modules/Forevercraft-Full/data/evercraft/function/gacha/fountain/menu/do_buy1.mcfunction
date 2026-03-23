# Exchange buy: 1 Forever Coin for 3 Dreamdust
# Runs as @s = player
execute unless score @s ec.dreamdust matches 3.. run return run tellraw @s [{text:"\u25C6 ",color:"gray"},{text:"Not enough Dreamdust! Need 3.",color:"red"}]
scoreboard players remove @s ec.dreamdust 3
scoreboard players add @s ec.coins 1
tellraw @s [{text:"\u25C6 ",color:"#E0B0FF"},{text:"Purchased ",color:"gray"},{text:"1 Forever Coin",color:"gold"},{text:"! (",color:"gray"},{"score":{"name":"@s","objective":"ec.dreamdust"},color:"light_purple"},{text:" remaining)",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.3
