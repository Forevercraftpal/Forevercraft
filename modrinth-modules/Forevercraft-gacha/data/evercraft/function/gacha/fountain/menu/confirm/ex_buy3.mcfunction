# Confirm Awakening Stone purchase — restore color and execute
data remove entity @s interaction
execute as @e[type=text_display,tag=ec.ExBuy3Label,distance=..20] run data modify entity @s text set value [{text:"Awakening Stone",color:"light_purple"},{text:" — 15 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy3Label,distance=..20] run tag @s remove ec.Confirming
execute as @p[distance=..5] run function evercraft:gacha/fountain/menu/do_buy3
