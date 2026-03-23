# Friend Title — Evolution notification message
# @s = player, macro args: evo_display
$tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"A title you hold has evolved into ",color:"light_purple"},{text:"$(evo_display)",color:"gold",bold:true},{text:"!",color:"light_purple"}]
