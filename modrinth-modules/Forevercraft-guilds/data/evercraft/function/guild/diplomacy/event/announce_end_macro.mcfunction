# Guild Diplomacy — Announce event results
# $(guild_a_name) $(guild_b_name)

# Guild A won
$execute if score #gd_score_a ec.var > #gd_score_b ec.var as @a[scores={ec.gd_event_active=1}] run tellraw @s [{text:"\n"},{text:"========================================",color:"gold"},{text:"\n"},{text:"    EVENT ENDED!",color:"yellow",bold:true},{text:"\n"},{text:"  WINNER: ",color:"gray"},{text:"$(guild_a_name)",color:"gold",bold:true},{text:"\n"},{text:"  Score: ",color:"gray"},{score:{name:"#gd_score_a",objective:"ec.var"},color:"green"},{text:" — ",color:"dark_gray"},{score:{name:"#gd_score_b",objective:"ec.var"},color:"red"},{text:"\n"},{text:"========================================",color:"gold"},{text:"\n"}]

# Guild B won
$execute if score #gd_score_b ec.var > #gd_score_a ec.var as @a[scores={ec.gd_event_active=1}] run tellraw @s [{text:"\n"},{text:"========================================",color:"gold"},{text:"\n"},{text:"    EVENT ENDED!",color:"yellow",bold:true},{text:"\n"},{text:"  WINNER: ",color:"gray"},{text:"$(guild_b_name)",color:"gold",bold:true},{text:"\n"},{text:"  Score: ",color:"gray"},{score:{name:"#gd_score_b",objective:"ec.var"},color:"green"},{text:" — ",color:"dark_gray"},{score:{name:"#gd_score_a",objective:"ec.var"},color:"red"},{text:"\n"},{text:"========================================",color:"gold"},{text:"\n"}]
