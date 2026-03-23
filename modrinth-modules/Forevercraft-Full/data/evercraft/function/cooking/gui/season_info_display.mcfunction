# Cooking GUI — Season info display (macro)
# Sets CK.Recipe4 to show season name + days remaining
$data modify entity @e[type=text_display,tag=CK.Recipe4,distance=..5,limit=1] text set value [{text:"☀ ",color:"$(season_color)"},{text:"$(season_name)",color:"$(season_color)",bold:true},{text:" — $(season_days) day(s) left",color:"gray"}]
