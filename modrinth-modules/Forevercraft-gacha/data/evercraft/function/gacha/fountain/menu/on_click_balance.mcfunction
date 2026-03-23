# Fountain menu — Check Balance clicked
# Runs as @s = interaction entity
data remove entity @s interaction
execute as @p[distance=..5] run tellraw @s [{text:"\u2726 ",color:"#E0B0FF"},{text:"Balance: ",color:"gray"},{"score":{"name":"@s","objective":"ec.coins"},color:"gold"},{text:" Coins",color:"gold"},{text:" | ",color:"dark_gray"},{"score":{"name":"@s","objective":"ec.dreamdust"},color:"light_purple"},{text:" Dreamdust",color:"light_purple"},{text:" | Lucid: ",color:"dark_gray"},{"score":{"name":"@s","objective":"ec.wish_spark"},color:"aqua"},{text:"/50",color:"gray"},{text:" \u2726",color:"#E0B0FF"}]
