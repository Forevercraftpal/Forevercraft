# Forging Result: MASTERWORK — Exceptional quality!
tellraw @s [{text:"[Forge] ",color:"gold"},{text:"MASTERWORK! ",color:"gold",bold:true},{text:"A flawless creation.",color:"yellow"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
execute at @s run particle minecraft:totem_of_undying ~ ~1.5 ~ 0.5 0.5 0.5 0.3 50

# Give output + bonus (extra material)
function evercraft:craftforever/forging/materials/give_output
function evercraft:craftforever/forging/materials/give_output
tellraw @s [{text:"  Bonus: ",color:"gold"},{text:"Double output!",color:"yellow"}]

# Coin reward
function evercraft:coins/forge_masterwork
