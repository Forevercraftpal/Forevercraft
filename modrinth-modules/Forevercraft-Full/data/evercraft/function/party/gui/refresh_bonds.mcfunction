# Party Bonds — Refresh Page
# Updates all dynamic text displays with current unlock status
# Run as the player

# === PARTY STATUS LINE ===
execute if score @s ec.party_id matches 0 run data modify entity @e[type=text_display,tag=Adv.PbStatus,distance=..5,limit=1] text set value [{text:"Status: ",color:"gray"},{text:"No Party",color:"red"},{text:" \u2014 Use ",color:"dark_gray"},{text:"[ < ]",color:"gray",bold:true},{text:" to create one",color:"dark_gray"}]
execute if score @s ec.party_role matches 1 run data modify entity @e[type=text_display,tag=Adv.PbStatus,distance=..5,limit=1] text set value [{text:"Status: ",color:"gray"},{text:"Party Leader",color:"gold"},{text:" \u2014 ",color:"dark_gray"},{text:"Nearby: ",color:"gray"},{score:{name:"@s",objective:"ec.party_nearby"},color:"green"}]
execute if score @s ec.party_role matches 2 run data modify entity @e[type=text_display,tag=Adv.PbStatus,distance=..5,limit=1] text set value [{text:"Status: ",color:"gray"},{text:"Party Member",color:"green"},{text:" \u2014 ",color:"dark_gray"},{text:"Nearby: ",color:"gray"},{score:{name:"@s",objective:"ec.party_nearby"},color:"green"}]

# === COMBO 7: Pack Tactics (bit 7 = 128) ===
scoreboard players operation #pbt ec.temp = @s ec.pc_unlocked
scoreboard players operation #pbt ec.temp /= #bit7 ec.const
scoreboard players operation #pbt ec.temp %= #bit1 ec.const
execute if score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo7,distance=..5,limit=1] text set value [{text:"\u2726 ",color:"light_purple"},{text:"Pack Tactics",color:"white"},{text:" \u2014 Beastmaster \u00d7 2",color:"gray"}]
execute unless score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo7,distance=..5,limit=1] text set value [{text:"? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" \u2014 ??? \u00d7 2",color:"dark_gray"}]

# === COMBO 8: Tidal Network (bit 8 = 256) ===
scoreboard players operation #pbt ec.temp = @s ec.pc_unlocked
scoreboard players operation #pbt ec.temp /= #bit8 ec.const
scoreboard players operation #pbt ec.temp %= #bit1 ec.const
execute if score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo8,distance=..5,limit=1] text set value [{text:"\u2726 ",color:"light_purple"},{text:"Tidal Network",color:"white"},{text:" \u2014 Fisher + Explorer",color:"gray"}]
execute unless score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo8,distance=..5,limit=1] text set value [{text:"? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" \u2014 ??? + ???",color:"dark_gray"}]

# === COMBO 0: Marked for Death (bit 0 = 1) ===
scoreboard players operation #pbt ec.temp = @s ec.pc_unlocked
scoreboard players operation #pbt ec.temp /= #bit0 ec.const
scoreboard players operation #pbt ec.temp %= #bit1 ec.const
execute if score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo0,distance=..5,limit=1] text set value [{text:"\u2694 ",color:"red"},{text:"Marked for Death",color:"white"},{text:" \u2014 Stealth + Victorian",color:"gray"}]
execute unless score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo0,distance=..5,limit=1] text set value [{text:"? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" \u2014 ??? + ???",color:"dark_gray"}]

# === COMBO 1: Shield Wall (bit 1 = 2) ===
scoreboard players operation #pbt ec.temp = @s ec.pc_unlocked
scoreboard players operation #pbt ec.temp /= #bit1 ec.const
scoreboard players operation #pbt ec.temp %= #bit1 ec.const
execute if score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo1,distance=..5,limit=1] text set value [{text:"\u2694 ",color:"blue"},{text:"Shield Wall",color:"white"},{text:" \u2014 Vitality + Evasion",color:"gray"}]
execute unless score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo1,distance=..5,limit=1] text set value [{text:"? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" \u2014 ??? + ???",color:"dark_gray"}]

# === COMBO 2: Blitz (bit 2 = 4) ===
scoreboard players operation #pbt ec.temp = @s ec.pc_unlocked
scoreboard players operation #pbt ec.temp /= #bit2 ec.const
scoreboard players operation #pbt ec.temp %= #bit1 ec.const
execute if score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo2,distance=..5,limit=1] text set value [{text:"\u2694 ",color:"yellow"},{text:"Blitz",color:"white"},{text:" \u2014 Agility + Victorian",color:"gray"}]
execute unless score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo2,distance=..5,limit=1] text set value [{text:"? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" \u2014 ??? + ???",color:"dark_gray"}]

# === COMBO 3: Field Medic (bit 3 = 8) ===
scoreboard players operation #pbt ec.temp = @s ec.pc_unlocked
scoreboard players operation #pbt ec.temp /= #bit3 ec.const
scoreboard players operation #pbt ec.temp %= #bit1 ec.const
execute if score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo3,distance=..5,limit=1] text set value [{text:"\u2694 ",color:"green"},{text:"Field Medic",color:"white"},{text:" \u2014 Vitality + Taskmaster",color:"gray"}]
execute unless score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo3,distance=..5,limit=1] text set value [{text:"? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" \u2014 ??? + ???",color:"dark_gray"}]

# === COMBO 4: Rally Cry (bit 4 = 16) ===
scoreboard players operation #pbt ec.temp = @s ec.pc_unlocked
scoreboard players operation #pbt ec.temp /= #bit4 ec.const
scoreboard players operation #pbt ec.temp %= #bit1 ec.const
execute if score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo4,distance=..5,limit=1] text set value [{text:"\u2694 ",color:"dark_aqua"},{text:"Rally Cry",color:"white"},{text:" \u2014 Explorer + Any",color:"gray"}]
execute unless score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo4,distance=..5,limit=1] text set value [{text:"? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" \u2014 ??? + ???",color:"dark_gray"}]

# === COMBO 5: Shared Fortunes (bit 5 = 32) ===
scoreboard players operation #pbt ec.temp = @s ec.pc_unlocked
scoreboard players operation #pbt ec.temp /= #bit5 ec.const
scoreboard players operation #pbt ec.temp %= #bit1 ec.const
execute if score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo5,distance=..5,limit=1] text set value [{text:"\u2694 ",color:"aqua"},{text:"Shared Fortunes",color:"white"},{text:" \u2014 Mining + Gathering",color:"gray"}]
execute unless score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo5,distance=..5,limit=1] text set value [{text:"? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" \u2014 ??? + ???",color:"dark_gray"}]

# === COMBO 6: Forge Bond (bit 6 = 64) ===
scoreboard players operation #pbt ec.temp = @s ec.pc_unlocked
scoreboard players operation #pbt ec.temp /= #bit6 ec.const
scoreboard players operation #pbt ec.temp %= #bit1 ec.const
execute if score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo6,distance=..5,limit=1] text set value [{text:"\u2694 ",color:"dark_red"},{text:"Forge Bond",color:"white"},{text:" \u2014 Blacksmith + Dexterity",color:"gray"}]
execute unless score #pbt ec.temp matches 1 run data modify entity @e[type=text_display,tag=Adv.PbCombo6,distance=..5,limit=1] text set value [{text:"? ",color:"dark_gray"},{text:"???",color:"dark_gray"},{text:" \u2014 ??? + ???",color:"dark_gray"}]
