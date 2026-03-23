# Infinite Castle — Set Continue Button Text (macro)
$data modify entity @e[type=text_display,tag=IC.ContTxt,limit=1] text set value [{text:"[ ",color:"dark_gray"},{text:"Continue Floor $(record)",color:"yellow",bold:true},{text:" ]",color:"dark_gray"},{text:" — $(keys) Keys",color:"gold"}]
