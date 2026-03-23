# Lore — Update Dimension Picker Descriptions (Macro)
# Macro args: dim0, dim1, dim2, dim3

$data modify entity @e[type=text_display,tag=Adv.LoreDimDesc0,distance=..5,limit=1] text set value {text:"$(dim0) / 83 sets",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.LoreDimDesc1,distance=..5,limit=1] text set value {text:"$(dim1) / 30 sets",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.LoreDimDesc2,distance=..5,limit=1] text set value {text:"$(dim2) / 26 sets",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.LoreDimDesc3,distance=..5,limit=1] text set value {text:"$(dim3) / 24 sets",color:"gray",italic:true}
