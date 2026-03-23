# Guild — Announce level up to all guild members
# $(guild_name) = guild name, $(new_level) = new level
$tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"$(guild_name)",color:"green",bold:true},{text:" has reached ",color:"gold"},{text:"Level $(new_level)",color:"yellow",bold:true},{text:"!",color:"gold"}]
