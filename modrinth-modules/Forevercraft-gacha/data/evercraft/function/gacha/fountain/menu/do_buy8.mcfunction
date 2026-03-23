# Exchange buy: Guaranteed Mythical Pull for 500 Dreamdust
# Runs as @s = player
execute unless score @s ec.dreamdust matches 500.. run return run tellraw @s [{text:"\u25C6 ",color:"gray"},{text:"Not enough Dreamdust! Need 500.",color:"red"}]
scoreboard players remove @s ec.dreamdust 500
function evercraft:gacha/pull/grant_mythical
tellraw @s [{text:"\u25C6 ",color:"#E0B0FF"},{text:"Dreamdust converted to ",color:"gray"},{text:"Guaranteed Mythical Pull",color:"light_purple",bold:true},{text:"!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.3
