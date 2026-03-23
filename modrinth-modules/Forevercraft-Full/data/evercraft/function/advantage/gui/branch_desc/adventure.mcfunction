# Adventure Branch — all 5 trees
tellraw @s {text:""}
tellraw @s [{text:"  ⚔ ",color:"red"},{text:"Adventure Branch",color:"red",bold:true}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}

# Agility: +4% speed/level
scoreboard players operation @s adv.temp = @s adv.agility
scoreboard players operation @s adv.temp *= #4 adv.temp
tellraw @s [{text:"  Agility ",color:"aqua",bold:true},{text:"— +4% movement speed/level",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.agility"},color:"aqua"},{text:" → +",color:"gray"},{score:{name:"@s",objective:"adv.temp"},color:"aqua"},{text:"% speed",color:"gray"}]
tellraw @s [{text:"    Blocks walked: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_walk"},color:"aqua"},{text:"  (4k→100k)",color:"dark_gray"}]

# Dexterity: +2% reach/level
scoreboard players operation @s adv.temp = @s adv.dexterity
scoreboard players operation @s adv.temp *= #2 adv.temp
tellraw @s [{text:"  Dexterity ",color:"yellow",bold:true},{text:"— +2% block reach/level",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.dexterity"},color:"yellow"},{text:" → +",color:"gray"},{score:{name:"@s",objective:"adv.temp"},color:"yellow"},{text:"% reach",color:"gray"}]
tellraw @s [{text:"    Blocks placed: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_place"},color:"yellow"},{text:"  (4k→100k)",color:"dark_gray"}]

# Evasion: +1% dodge/level
tellraw @s [{text:"  Evasion ",color:"white",bold:true},{text:"— +1% dodge chance/level",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.evasion"},color:"white"},{text:" → +",color:"gray"},{score:{name:"@s",objective:"adv.evasion"},color:"white"},{text:"% dodge",color:"gray"}]
tellraw @s [{text:"    Times hit by mobs: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_hit"},color:"white"},{text:"  (400→10k)",color:"dark_gray"}]

# Stealth: +4% crouch speed/level
scoreboard players operation @s adv.temp = @s adv.stealth
scoreboard players operation @s adv.temp *= #4 adv.temp
tellraw @s [{text:"  Stealth ",color:"dark_gray",bold:true},{text:"— +4% crouch speed/level",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.stealth"},color:"dark_gray"},{text:" → +",color:"gray"},{score:{name:"@s",objective:"adv.temp"},color:"dark_gray"},{text:"% sneak speed",color:"gray"}]
tellraw @s [{text:"    Blocks crouched: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_crouch"},color:"dark_gray"},{text:"  (2k→50k)",color:"dark_gray"}]

# Vitality: +1 heart/level (from Lv.5)
tellraw @s [{text:"  Vitality ",color:"red",bold:true},{text:"— +1 heart/level (from Lv.5)",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.vitality"},color:"red"},{text:" → +",color:"gray"},{score:{name:"@s",objective:"adv.vitality"},color:"red"},{text:" hearts",color:"gray"}]
tellraw @s [{text:"    Fruits & veggies eaten: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_food"},color:"red"},{text:"  (400→10k)",color:"dark_gray"}]
tellraw @s {text:""}
