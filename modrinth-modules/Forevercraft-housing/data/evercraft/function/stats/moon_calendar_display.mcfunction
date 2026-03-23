# Moon Calendar Display — Macro function for formatted output
# $full_days, $new_days, $season_day from storage

tellraw @s [{text:"  Moon: ",color:"gray"},{nbt:"moon_name",storage:"evercraft:briefing",color:"#B8C4E8"},{text:" · Next Full: ",color:"dark_gray"},{text:"$(full_days)d",color:"#F0E68C"},{text:" · Next New: ",color:"dark_gray"},{text:"$(new_days)d",color:"#B8C4E8"}]
tellraw @s [{text:"  Season: ",color:"gray"},{nbt:"season_name",storage:"evercraft:briefing",color:"#DAA520"},{text:" · Day $(season_day) of 16",color:"dark_gray"}]
