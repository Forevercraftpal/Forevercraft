# Dungeon Leaderboard — Broadcast new personal best (macro)
# Run as: the player who set the record
$tellraw @a [{text:"[Dungeon] ",color:"dark_purple"},{selector:"@s"},{text:" set a new best time of ",color:"gold"},{text:"$(seconds)s",color:"aqua",bold:true},{text:" in ",color:"gold"},{text:"$(instance)",color:"light_purple",bold:true},{text:"!",color:"gold"}]
