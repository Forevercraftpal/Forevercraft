# Glyphforge GUI — Set timer display text (macro)
# Displays remaining forge time on the Info text_display

$data modify entity @e[type=text_display,tag=RF.Info,distance=..7,limit=1] text set value [{text:"Time Remaining: ",color:"gold"},{text:"$(temp_days) days, $(temp_hours) hours",color:"yellow"}]
