# Player Stats — Economy

tellraw @s {text:""}
tellraw @s [{text:"  💰 ",color:"gold"},{text:"Economy",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Trades: ",color:"gray"},{score:{name:"@s",objective:"ach.adj_trade"},color:"white"}]
tellraw @s [{text:"    Biomes Visited: ",color:"gray"},{score:{name:"@s",objective:"ach.biomes_visited"},color:"white"}]
tellraw @s [{text:"    Structures Found: ",color:"gray"},{score:{name:"@s",objective:"ach.structures_found"},color:"white"}]
