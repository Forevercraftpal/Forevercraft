# Player Stats — Gathering

tellraw @s {text:""}
tellraw @s [{text:"  ⛏ ",color:"aqua"},{text:"Gathering",bold:true,color:"#DDF0EE"}]
tellraw @s [{text:"    Blocks Mined: ",color:"gray"},{score:{name:"@s",objective:"ach.blocks_mined"},color:"white"}]
tellraw @s [{text:"    Fish Caught: ",color:"gray"},{score:{name:"@s",objective:"ach.fish_caught"},color:"white"}]
tellraw @s [{text:"    Crops Harvested: ",color:"gray"},{score:{name:"@s",objective:"ach.crops_harvested"},color:"white"}]
tellraw @s [{text:"    Items Smelted: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_smelt"},color:"white"}]
