# Guild Diplomacy — Final event start announcement
# $(guild_a_name) $(guild_b_name) $(activity_name)

# Competition announcement
$execute if score #gd_event_type ec.var matches 1 as @a[scores={ec.gd_event_active=1}] run tellraw @s [{text:"\n"},{text:"========================================",color:"gold"},{text:"\n"},{text:"    COMPETITION STARTED!",color:"yellow",bold:true},{text:"\n"},{text:"  $(guild_a_name)",color:"gold"},{text:" vs ",color:"gray"},{text:"$(guild_b_name)",color:"gold"},{text:"\n"},{text:"  Activity: ",color:"gray"},{text:"$(activity_name)",color:"aqua",bold:true},{text:"\n"},{text:"  Duration: ",color:"gray"},{text:"1 In-Game Day",color:"white"},{text:"\n"},{text:"========================================",color:"gold"},{text:"\n"}]

# Pillage announcement
$execute if score #gd_event_type ec.var matches 2 as @a[scores={ec.gd_event_active=1}] run tellraw @s [{text:"\n"},{text:"========================================",color:"dark_red"},{text:"\n"},{text:"    PILLAGE BEGUN!",color:"red",bold:true},{text:"\n"},{text:"  $(guild_a_name)",color:"red"},{text:" vs ",color:"gray"},{text:"$(guild_b_name)",color:"red"},{text:"\n"},{text:"  Activity: ",color:"gray"},{text:"$(activity_name)",color:"aqua",bold:true},{text:"\n"},{text:"  PvP ENABLED in enemy territory!",color:"dark_red",bold:true},{text:"\n"},{text:"  Duration: ",color:"gray"},{text:"1 In-Game Day",color:"white"},{text:"\n"},{text:"========================================",color:"dark_red"},{text:"\n"}]
