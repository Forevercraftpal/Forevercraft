# Gathering Branch — all 5 trees
tellraw @s {text:""}
tellraw @s [{text:"  🌿 ",color:"green"},{text:"Gathering Branch",color:"green",bold:true}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}

# Fishing: +0.625%/level (fractional — show level only)
tellraw @s [{text:"  Fishing ",color:"blue",bold:true},{text:"— Multi-catch chance (+0.625%/lvl)",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.fishing"},color:"blue"},{text:" — chance increases each level",color:"gray"}]
tellraw @s [{text:"    Fish caught: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_fish"},color:"blue"},{text:"  (2k→50k)",color:"dark_gray"}]

# Mining: tiered haste surge (show level only)
tellraw @s [{text:"  Mining ",color:"gold",bold:true},{text:"— Miner's Surge haste chance",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.mining"},color:"gold"},{text:" — surge grows stronger each tier",color:"gray"}]
tellraw @s [{text:"    Blocks mined: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_mine"},color:"gold"},{text:"  (40k→1M)",color:"dark_gray"}]

# Gathering: +0.625%/level (fractional — show level only)
tellraw @s [{text:"  Gathering ",color:"green",bold:true},{text:"— Extra crop drops (+0.625%/lvl)",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.gathering"},color:"green"},{text:" — chance increases each level",color:"gray"}]
tellraw @s [{text:"    Crops harvested: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_harvest"},color:"green"},{text:"  (1k→25k)",color:"dark_gray"}]

# Blacksmith: furnace smelt speed (non-linear scaling)
tellraw @s [{text:"  Blacksmith ",color:"gray",bold:true},{text:"— Nearby furnaces smelt faster",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.blacksmith"},color:"gray"},{text:" — smelt speed grows each level",color:"gray"}]
tellraw @s [{text:"    Items smelted: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_smelt"},color:"gray"},{text:"  (2k→50k)",color:"dark_gray"}]

# Explorer: level*4% cooldown reduction
scoreboard players operation @s adv.temp = @s adv.explorer
scoreboard players operation @s adv.temp *= #4 adv.temp
tellraw @s [{text:"  Explorer ",color:"dark_aqua",bold:true},{text:"— Structure crate cooldown reduced",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.explorer"},color:"dark_aqua"},{text:" → -",color:"gray"},{score:{name:"@s",objective:"adv.temp"},color:"dark_aqua"},{text:"% cooldown",color:"gray"}]
tellraw @s [{text:"    Structure crates looted: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_struct"},color:"dark_aqua"},{text:"  (100→2.5k)",color:"dark_gray"}]
tellraw @s {text:""}
