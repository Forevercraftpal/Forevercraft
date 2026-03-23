# Refresh Page 3 ability displays with current prestige unlock status
# Shows: "TreeName: Ability1 | Ability2 | ???" format
# Green = unlocked, dark_gray = locked (???)
# Run as the player with menu open

# Agility (P1=Sprint Persist, P2=Double Jump, P3=Dash)
execute if score @s adv.pres_agil matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_agil matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"Sprint Persist",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_agil matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"Sprint Persist",color:"green"},{text:" | ",color:"gray"},{text:"Double Jump",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_agil matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil0,limit=1,sort=nearest] text set value [{text:"Agility: ",color:"aqua"},{text:"Sprint Persist | Double Jump | Dash",color:"green"}]

# Dexterity (P1=Quick Draw, P2=Dual Wield, P3=Extended Reach)
execute if score @s adv.pres_dext matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"yellow"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_dext matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"yellow"},{text:"Quick Draw",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_dext matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"yellow"},{text:"Quick Draw",color:"green"},{text:" | ",color:"gray"},{text:"Dual Wield",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_dext matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil1,limit=1,sort=nearest] text set value [{text:"Dexterity: ",color:"yellow"},{text:"Quick Draw | Dual Wield | Extended Reach",color:"green"}]

# Evasion (P1=Shadow Counter, P2=Vanishing Dodge, P3=Perfect Evasion)
execute if score @s adv.pres_evas matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_evas matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"Shadow Counter",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_evas matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"Shadow Counter",color:"green"},{text:" | ",color:"gray"},{text:"Vanishing Dodge",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_evas matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil2,limit=1,sort=nearest] text set value [{text:"Evasion: ",color:"white"},{text:"Shadow Counter | Vanishing Dodge | Perfect Evasion",color:"green"}]

# Stealth (P1=Shadow Cloak, P2=Backstab, P3=Perfect Stealth)
execute if score @s adv.pres_stea matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"dark_gray"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_stea matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"dark_gray"},{text:"Shadow Cloak",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_stea matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"dark_gray"},{text:"Shadow Cloak",color:"green"},{text:" | ",color:"gray"},{text:"Backstab",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_stea matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil3,limit=1,sort=nearest] text set value [{text:"Stealth: ",color:"dark_gray"},{text:"Shadow Cloak | Backstab | Perfect Stealth",color:"green"}]

# Vitality (P1=Vital Regen, P2=Death Save, P3=Iron Will)
execute if score @s adv.pres_vita matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_vita matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"Vital Regen",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_vita matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"Vital Regen",color:"green"},{text:" | ",color:"gray"},{text:"Death Save",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_vita matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil4,limit=1,sort=nearest] text set value [{text:"Vitality: ",color:"red"},{text:"Vital Regen | Death Save | Iron Will",color:"green"}]

# Taskmaster (P1=Quest Mastery, P2=Diplomat, P3=Guild Master)
execute if score @s adv.pres_task matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"dark_purple"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_task matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"dark_purple"},{text:"Quest Mastery",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_task matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"dark_purple"},{text:"Quest Mastery",color:"green"},{text:" | ",color:"gray"},{text:"Diplomat",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_task matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil5,limit=1,sort=nearest] text set value [{text:"Taskmaster: ",color:"dark_purple"},{text:"Quest Mastery | Diplomat | Guild Master",color:"green"}]

# Beastmaster (P1=Alpha Bond, P2=Pack Tactics, P3=Pack Leader)
execute if score @s adv.pres_beas matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"green"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_beas matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"green"},{text:"Alpha Bond",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_beas matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"green"},{text:"Alpha Bond",color:"green"},{text:" | ",color:"gray"},{text:"Pack Tactics",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_beas matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil6,limit=1,sort=nearest] text set value [{text:"Beastmaster: ",color:"green"},{text:"Alpha Bond | Pack Tactics | Pack Leader",color:"green"}]

# Victorian (P1=XP Siphon, P2=Critical Loot, P3=Trophy Hunter)
execute if score @s adv.pres_vict matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"dark_red"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_vict matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"dark_red"},{text:"XP Siphon",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_vict matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"dark_red"},{text:"XP Siphon",color:"green"},{text:" | ",color:"gray"},{text:"Critical Loot",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_vict matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil7,limit=1,sort=nearest] text set value [{text:"Victorian: ",color:"dark_red"},{text:"XP Siphon | Critical Loot | Trophy Hunter",color:"green"}]

# Fishing (P1=Water Net, P2=Second Net, P3=Master Angler)
execute if score @s adv.pres_fish matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"blue"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_fish matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"blue"},{text:"Water Net",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_fish matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"blue"},{text:"Water Net",color:"green"},{text:" | ",color:"gray"},{text:"Second Net",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_fish matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil8,limit=1,sort=nearest] text set value [{text:"Fishing: ",color:"blue"},{text:"Water Net | Second Net | Master Angler",color:"green"}]

# Mining (P1=Ore Magnet, P2=Ore Doubling, P3=Ancient Ore)
execute if score @s adv.pres_mine matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_mine matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Ore Magnet",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_mine matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Ore Magnet",color:"green"},{text:" | ",color:"gray"},{text:"Ore Doubling",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_mine matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil9,limit=1,sort=nearest] text set value [{text:"Mining: ",color:"gold"},{text:"Ore Magnet | Ore Doubling | Ancient Ore",color:"green"}]

# Gathering (P1=Green Thumb, P2=Fertile Aura, P3=Harvest Lord)
execute if score @s adv.pres_gath matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"green"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_gath matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"green"},{text:"Green Thumb",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_gath matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"green"},{text:"Green Thumb",color:"green"},{text:" | ",color:"gray"},{text:"Fertile Aura",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_gath matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil10,limit=1,sort=nearest] text set value [{text:"Gathering: ",color:"green"},{text:"Green Thumb | Fertile Aura | Harvest Lord",color:"green"}]

# Blacksmith (P1=Master Alloy, P2=Efficient Fuel, P3=Auto-Smelt)
execute if score @s adv.pres_blac matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gray"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_blac matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gray"},{text:"Master Alloy",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_blac matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gray"},{text:"Master Alloy",color:"green"},{text:" | ",color:"gray"},{text:"Efficient Fuel",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_blac matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil11,limit=1,sort=nearest] text set value [{text:"Blacksmith: ",color:"gray"},{text:"Master Alloy | Efficient Fuel | Auto-Smelt",color:"green"}]

# Explorer (P1=Structure Sense, P2=Cartographer, P3=Wayfinder)
execute if score @s adv.pres_expl matches 0 run data modify entity @e[type=text_display,tag=Adv.Abil12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"dark_aqua"},{text:"??? | ??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_expl matches 1 run data modify entity @e[type=text_display,tag=Adv.Abil12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"dark_aqua"},{text:"Structure Sense",color:"green"},{text:" | ",color:"gray"},{text:"??? | ???",color:"dark_gray"}]
execute if score @s adv.pres_expl matches 2 run data modify entity @e[type=text_display,tag=Adv.Abil12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"dark_aqua"},{text:"Structure Sense",color:"green"},{text:" | ",color:"gray"},{text:"Cartographer",color:"green"},{text:" | ",color:"gray"},{text:"???",color:"dark_gray"}]
execute if score @s adv.pres_expl matches 3 run data modify entity @e[type=text_display,tag=Adv.Abil12,limit=1,sort=nearest] text set value [{text:"Explorer: ",color:"dark_aqua"},{text:"Structure Sense | Cartographer | Wayfinder",color:"green"}]
