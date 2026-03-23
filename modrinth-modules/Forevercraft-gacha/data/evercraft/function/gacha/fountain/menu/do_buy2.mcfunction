# Exchange buy: Companion Treat for 10 Dreamdust
# Runs as @s = player
execute unless score @s ec.dreamdust matches 10.. run return run tellraw @s [{text:"\u25C6 ",color:"gray"},{text:"Not enough Dreamdust! Need 10.",color:"red"}]
scoreboard players remove @s ec.dreamdust 10
loot give @s loot evercraft:companions/items/companion_treat
tellraw @s [{text:"\u25C6 ",color:"#E0B0FF"},{text:"Purchased ",color:"gray"},{text:"Companion Treat",color:"gold"},{text:"!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.3
