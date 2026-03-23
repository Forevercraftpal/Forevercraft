# Dungeon Ready Progress — Show ready count
# Uses #dg_ready_count and #dg_ready_total from ec.temp

tellraw @a[tag=dg.player,distance=..32] [{text:"  Ready: ",color:"dark_gray"},{score:{name:"#dg_ready_count",objective:"ec.temp"},color:"green"},{text:"/",color:"dark_gray"},{score:{name:"#dg_ready_total",objective:"ec.temp"},color:"gray"}]
