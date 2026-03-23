# Black Market — Update Netherite Display (Macro)
$execute as @e[type=text_display,tag=BM.NethDisplay,distance=..5,limit=1] run data modify entity @s text set value [{text:"Netherite: ",color:"aqua"},{text:"$(neth_count) ",color:"white",bold:true},{text:"\u25C6",color:"dark_aqua"}]
