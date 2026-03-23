# Show day counter title — run as/at each player
# Macro args: day_num, era_name (from storage evercraft:day_counter args)
title @s times 20 80 40
$title @s title [{text:"\u2600 ",color:"#D6D0C7"},{text:"Day $(day_num)",color:"gold",bold:true},{text:" \u2600",color:"#D6D0C7"}]
$title @s subtitle {text:"~ $(era_name) ~",color:"gray",italic:true}
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.3 1.4
