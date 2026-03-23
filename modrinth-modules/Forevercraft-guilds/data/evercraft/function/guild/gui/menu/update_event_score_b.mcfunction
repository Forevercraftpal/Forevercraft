# Guild Menu — Update guild B score display (macro)
# @s = text_display entity, $(guild_b_name)
$data modify entity @s text set value [{text:"$(guild_b_name)",color:"gold"},{text:": ",color:"gray"},{score:{name:"#gd_score_b",objective:"ec.var"},color:"yellow"}]
