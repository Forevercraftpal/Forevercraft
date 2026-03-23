# Guild Diplomacy — Show actionbar to event participants
# $(guild_a_name) $(guild_b_name)

$execute as @a[scores={ec.gd_event_active=1}] run title @s actionbar [{text:"$(guild_a_name)",color:"gold"},{text:": ",color:"gray"},{score:{name:"#gd_score_a",objective:"ec.var"},color:"yellow"},{text:" | ",color:"dark_gray"},{text:"$(guild_b_name)",color:"gold"},{text:": ",color:"gray"},{score:{name:"#gd_score_b",objective:"ec.var"},color:"yellow"}]
