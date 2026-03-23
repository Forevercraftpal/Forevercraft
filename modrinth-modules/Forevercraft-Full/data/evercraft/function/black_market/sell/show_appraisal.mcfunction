# Black Market — Show Appraisal Result (Macro)
$execute as @e[type=text_display,tag=BM.AppraiseTxt,distance=..8,limit=1] run data modify entity @s text set value [{text:"Value: ",color:"gold"},{text:"$(sell_price) Netherite Ingot(s)",color:"white",bold:true}]
