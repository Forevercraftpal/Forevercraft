# Render a 3-ingredient recipe display (Macro)
# Args: r_slot, r_name, r_tier_color, i1_name, i1_color, i2_name, i2_color, i3_name, i3_color
# Runs as the player (at player position — entities found by distance)
$data modify entity @e[type=text_display,tag=CK.Recipe$(r_slot),distance=..5,limit=1] text set value [{text:"► ",color:"gray"},{text:"$(r_name)",color:"$(r_tier_color)"}]
$data modify entity @e[type=text_display,tag=CK.Ingr$(r_slot),distance=..5,limit=1] text set value [{text:"  $(i1_name)",color:"$(i1_color)"},{text:" + ",color:"gray"},{text:"$(i2_name)",color:"$(i2_color)"},{text:" + ",color:"gray"},{text:"$(i3_name)",color:"$(i3_color)"}]
