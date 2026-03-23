# Housing Decoration — Show Score in GUI (Macro)
# Called with: {rank:"Name", rank_color:"color"}
# Uses storage: evercraft:housing temp.decor_score

$data modify entity @e[type=text_display,tag=HS.Decor,distance=..7,limit=1] text set value [{text:"Comfort: ",color:"dark_gray"},{score:{name:"@s",objective:"hs.decor"},color:"white"},{text:" — ",color:"dark_gray"},{text:"$(rank)",color:"$(rank_color)",bold:true}]
