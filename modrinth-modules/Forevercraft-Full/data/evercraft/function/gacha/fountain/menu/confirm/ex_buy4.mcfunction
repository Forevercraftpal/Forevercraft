# Confirm Tree Token purchase — restore color and execute
data remove entity @s interaction
execute as @e[type=text_display,tag=ec.ExBuy4Label,distance=..20] run data modify entity @s text set value [{text:"Tree Token",color:"green"},{text:" — 30 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy4Label,distance=..20] run tag @s remove ec.Confirming
execute as @p[distance=..5] run function evercraft:gacha/fountain/menu/do_buy4
