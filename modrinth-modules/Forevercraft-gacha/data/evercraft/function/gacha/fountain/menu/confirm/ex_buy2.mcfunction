# Confirm Companion Treat purchase — restore color and execute
data remove entity @s interaction
execute as @e[type=text_display,tag=ec.ExBuy2Label,distance=..20] run data modify entity @s text set value [{text:"Companion Treat",color:"gold"},{text:" — 10 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy2Label,distance=..20] run tag @s remove ec.Confirming
execute as @p[distance=..5] run function evercraft:gacha/fountain/menu/do_buy2
