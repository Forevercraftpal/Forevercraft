# Exchange buy: Guaranteed Exquisite Pull for 200 Dreamdust
# Runs as @s = player
execute unless score @s ec.dreamdust matches 200.. run return run tellraw @s [{text:"\u25C6 ",color:"gray"},{text:"Not enough Dreamdust! Need 200.",color:"red"}]
scoreboard players remove @s ec.dreamdust 200
function evercraft:gacha/pull/grant_exquisite
tellraw @s [{text:"\u25C6 ",color:"#E0B0FF"},{text:"Dreamdust converted to ",color:"gray"},{text:"Guaranteed Exquisite Pull",color:"yellow",bold:true},{text:"!",color:"gray"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.3
