# Guild GUI — Info tellraw (macro)
$tellraw @s [{text:" Guild: ",color:"gray"},{text:"$(guild_name)",color:"green",bold:true}]
$tellraw @s [{text:" Level: ",color:"gray"},{text:"$(guild_level)",color:"yellow"},{text:" | XP: ",color:"gray"},{text:"$(guild_xp)",color:"yellow"}]
$tellraw @s [{text:" Members: ",color:"gray"},{text:"$(member_count)",color:"aqua"}]
$tellraw @s [{text:" Your Rank: ",color:"gray"},{text:"$(rank_name)",color:"gold"}]
$tellraw @s [{text:" Contribution: ",color:"gray"},{text:"$(player_contrib)",color:"green"},{text:"/50,000",color:"dark_green"}]
