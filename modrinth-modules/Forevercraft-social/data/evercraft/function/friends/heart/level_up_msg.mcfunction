# Friend Heart — Macro: friendship level up message
# Macro args: level_name, level_color
tellraw @s ""
$tellraw @s [{text:"  ",color:"white"},{text:"Friendship Level Up!",color:"$(level_color)",bold:true}]
$tellraw @s [{text:"  You reached ",color:"gray"},{text:"$(level_name)",color:"$(level_color)"},{text:" status!",color:"gray"}]
tellraw @s ""
