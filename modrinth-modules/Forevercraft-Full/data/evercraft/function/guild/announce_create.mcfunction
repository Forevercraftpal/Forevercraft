# Guild — Announce guild creation to all players
# $(name) = guild name
$tellraw @a [{text:"[Guild] ",color:"green"},{selector:"@s"},{text:" has founded the guild ",color:"gold"},{text:"$(name)",color:"green",bold:true},{text:"!",color:"gold"}]
