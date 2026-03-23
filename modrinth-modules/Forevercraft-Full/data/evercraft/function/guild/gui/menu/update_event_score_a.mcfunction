# Guild Menu — Update guild A score display (macro)
# @s = text_display entity, $(guild_a_name)
$data modify entity @s text set value [{text:"$(guild_a_name)",color:"gold"},{text:": ",color:"gray"},{score:{name:"#gd_score_a",objective:"ec.var"},color:"yellow"}]
