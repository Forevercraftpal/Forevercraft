# Progression Branch — all 4 trees
tellraw @s {text:""}
tellraw @s [{text:"  📜 ",color:"dark_purple"},{text:"Progression Branch",color:"dark_purple",bold:true}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}

# Taskmaster: +4% quest XP & rep/level
scoreboard players operation @s adv.temp = @s adv.taskmaster
scoreboard players operation @s adv.temp *= #4 adv.temp
tellraw @s [{text:"  Taskmaster ",color:"dark_purple",bold:true},{text:"— +4% quest XP & rep/level",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.taskmaster"},color:"dark_purple"},{text:" → +",color:"gray"},{score:{name:"@s",objective:"adv.temp"},color:"dark_purple"},{text:"% quest rewards",color:"gray"}]
tellraw @s [{text:"    Quests completed: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_quests"},color:"dark_purple"},{text:"  (100→2.5k)",color:"dark_gray"}]

# Beastmaster: wolf damage scaling (non-percentage)
tellraw @s [{text:"  Beastmaster ",color:"green",bold:true},{text:"— Wolves deal more damage",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.beastmaster"},color:"green"},{text:" — wolves grow stronger each level",color:"gray"}]
tellraw @s [{text:"    Pets at max level: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_pets100"},color:"green"},{text:"  (1→25)",color:"dark_gray"}]

# Victorian: +4% crate/patron XP/level
scoreboard players operation @s adv.temp = @s adv.victorian
scoreboard players operation @s adv.temp *= #4 adv.temp
tellraw @s [{text:"  Victorian ",color:"dark_red",bold:true},{text:"— +4% crate/patron XP/level",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.victorian"},color:"dark_red"},{text:" → +",color:"gray"},{score:{name:"@s",objective:"adv.temp"},color:"dark_red"},{text:"% XP bonus",color:"gray"}]
tellraw @s [{text:"    Mobs slain: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_mobs"},color:"dark_red"},{text:"  (2k→50k)",color:"dark_gray"}]

# Culinary: +10% Well-Fed duration per 5 levels
scoreboard players operation @s adv.temp = @s adv.culinary
scoreboard players operation @s adv.temp /= #5 adv.temp
scoreboard players operation @s adv.temp *= #10 adv.temp
tellraw @s [{text:"  Culinary ",color:"green",bold:true},{text:"— +10% Well-Fed duration per 5 levels",color:"white"}]
tellraw @s [{text:"    Lv.",color:"gray"},{score:{name:"@s",objective:"adv.culinary"},color:"green"},{text:" → +",color:"gray"},{score:{name:"@s",objective:"adv.temp"},color:"green"},{text:"% Well-Fed duration",color:"gray"}]
tellraw @s [{text:"    Meals cooked: ",color:"gray"},{score:{name:"@s",objective:"adv.stat_cook"},color:"green"},{text:"  (50→1.25k)",color:"dark_gray"}]
tellraw @s {text:""}
