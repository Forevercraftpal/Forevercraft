# Black Market — Set timer text via macro
$data modify entity @e[type=text_display,tag=BM.Timer,distance=..5,limit=1] text set value [{text:"Deals rotate in ~",color:"dark_gray",italic:true},{text:"$(minutes) min",color:"gray",italic:true}]
