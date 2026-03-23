# Refresh Boss Titles page — updates display based on kill counts and active title
# Run as the player

# ============================================================================
# BOSS 1: HOLLOW KING (wb.k1, title IDs 1-4, tag Adv.BT0)
# ============================================================================
execute if score @s wb.k1 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT0,distance=..5,limit=1] text set value {text:"Hollow King  [Locked]",color:"dark_gray"}
execute if score @s wb.k1 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT0,distance=..5,limit=1] text set value [{text:"Hollow King  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k1"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k1 matches 10..24 unless score @s wb.title matches 1..4 run data modify entity @e[type=text_display,tag=Adv.BT0,distance=..5,limit=1] text set value [{text:"Hollow King  ",color:"gray"},{text:"Slayer",color:"white"}]
execute if score @s wb.k1 matches 25..49 unless score @s wb.title matches 1..4 run data modify entity @e[type=text_display,tag=Adv.BT0,distance=..5,limit=1] text set value [{text:"Hollow King  ",color:"gray"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k1 matches 50..99 unless score @s wb.title matches 1..4 run data modify entity @e[type=text_display,tag=Adv.BT0,distance=..5,limit=1] text set value [{text:"Hollow King  ",color:"gray"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k1 matches 100.. unless score @s wb.title matches 1..4 run data modify entity @e[type=text_display,tag=Adv.BT0,distance=..5,limit=1] text set value [{text:"Hollow King  ",color:"gray"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k1 matches 10.. if score @s wb.title matches 1..4 run data modify entity @e[type=text_display,tag=Adv.BT0,distance=..5,limit=1] text set value [{text:"Hollow King  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 2: VERDANT WARDEN (wb.k2, title IDs 5-8, tag Adv.BT1)
# ============================================================================
execute if score @s wb.k2 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT1,distance=..5,limit=1] text set value {text:"Verdant Warden  [Locked]",color:"dark_gray"}
execute if score @s wb.k2 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT1,distance=..5,limit=1] text set value [{text:"Verdant Warden  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k2"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k2 matches 10..24 unless score @s wb.title matches 5..8 run data modify entity @e[type=text_display,tag=Adv.BT1,distance=..5,limit=1] text set value [{text:"Verdant Warden  ",color:"green"},{text:"Slayer",color:"white"}]
execute if score @s wb.k2 matches 25..49 unless score @s wb.title matches 5..8 run data modify entity @e[type=text_display,tag=Adv.BT1,distance=..5,limit=1] text set value [{text:"Verdant Warden  ",color:"green"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k2 matches 50..99 unless score @s wb.title matches 5..8 run data modify entity @e[type=text_display,tag=Adv.BT1,distance=..5,limit=1] text set value [{text:"Verdant Warden  ",color:"green"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k2 matches 100.. unless score @s wb.title matches 5..8 run data modify entity @e[type=text_display,tag=Adv.BT1,distance=..5,limit=1] text set value [{text:"Verdant Warden  ",color:"green"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k2 matches 10.. if score @s wb.title matches 5..8 run data modify entity @e[type=text_display,tag=Adv.BT1,distance=..5,limit=1] text set value [{text:"Verdant Warden  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 3: STORMFORGED (wb.k3, title IDs 9-12, tag Adv.BT2)
# ============================================================================
execute if score @s wb.k3 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT2,distance=..5,limit=1] text set value {text:"Stormforged  [Locked]",color:"dark_gray"}
execute if score @s wb.k3 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT2,distance=..5,limit=1] text set value [{text:"Stormforged  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k3"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k3 matches 10..24 unless score @s wb.title matches 9..12 run data modify entity @e[type=text_display,tag=Adv.BT2,distance=..5,limit=1] text set value [{text:"Stormforged  ",color:"yellow"},{text:"Slayer",color:"white"}]
execute if score @s wb.k3 matches 25..49 unless score @s wb.title matches 9..12 run data modify entity @e[type=text_display,tag=Adv.BT2,distance=..5,limit=1] text set value [{text:"Stormforged  ",color:"yellow"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k3 matches 50..99 unless score @s wb.title matches 9..12 run data modify entity @e[type=text_display,tag=Adv.BT2,distance=..5,limit=1] text set value [{text:"Stormforged  ",color:"yellow"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k3 matches 100.. unless score @s wb.title matches 9..12 run data modify entity @e[type=text_display,tag=Adv.BT2,distance=..5,limit=1] text set value [{text:"Stormforged  ",color:"yellow"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k3 matches 10.. if score @s wb.title matches 9..12 run data modify entity @e[type=text_display,tag=Adv.BT2,distance=..5,limit=1] text set value [{text:"Stormforged  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 4: TIDECALLER (wb.k4, title IDs 13-16, tag Adv.BT3)
# ============================================================================
execute if score @s wb.k4 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT3,distance=..5,limit=1] text set value {text:"Tidecaller  [Locked]",color:"dark_gray"}
execute if score @s wb.k4 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT3,distance=..5,limit=1] text set value [{text:"Tidecaller  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k4"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k4 matches 10..24 unless score @s wb.title matches 13..16 run data modify entity @e[type=text_display,tag=Adv.BT3,distance=..5,limit=1] text set value [{text:"Tidecaller  ",color:"aqua"},{text:"Slayer",color:"white"}]
execute if score @s wb.k4 matches 25..49 unless score @s wb.title matches 13..16 run data modify entity @e[type=text_display,tag=Adv.BT3,distance=..5,limit=1] text set value [{text:"Tidecaller  ",color:"aqua"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k4 matches 50..99 unless score @s wb.title matches 13..16 run data modify entity @e[type=text_display,tag=Adv.BT3,distance=..5,limit=1] text set value [{text:"Tidecaller  ",color:"aqua"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k4 matches 100.. unless score @s wb.title matches 13..16 run data modify entity @e[type=text_display,tag=Adv.BT3,distance=..5,limit=1] text set value [{text:"Tidecaller  ",color:"aqua"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k4 matches 10.. if score @s wb.title matches 13..16 run data modify entity @e[type=text_display,tag=Adv.BT3,distance=..5,limit=1] text set value [{text:"Tidecaller  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 5: EARTHSHAKER (wb.k5, title IDs 17-20, tag Adv.BT4)
# ============================================================================
execute if score @s wb.k5 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT4,distance=..5,limit=1] text set value {text:"Earthshaker  [Locked]",color:"dark_gray"}
execute if score @s wb.k5 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT4,distance=..5,limit=1] text set value [{text:"Earthshaker  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k5"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k5 matches 10..24 unless score @s wb.title matches 17..20 run data modify entity @e[type=text_display,tag=Adv.BT4,distance=..5,limit=1] text set value [{text:"Earthshaker  ",color:"dark_green"},{text:"Slayer",color:"white"}]
execute if score @s wb.k5 matches 25..49 unless score @s wb.title matches 17..20 run data modify entity @e[type=text_display,tag=Adv.BT4,distance=..5,limit=1] text set value [{text:"Earthshaker  ",color:"dark_green"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k5 matches 50..99 unless score @s wb.title matches 17..20 run data modify entity @e[type=text_display,tag=Adv.BT4,distance=..5,limit=1] text set value [{text:"Earthshaker  ",color:"dark_green"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k5 matches 100.. unless score @s wb.title matches 17..20 run data modify entity @e[type=text_display,tag=Adv.BT4,distance=..5,limit=1] text set value [{text:"Earthshaker  ",color:"dark_green"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k5 matches 10.. if score @s wb.title matches 17..20 run data modify entity @e[type=text_display,tag=Adv.BT4,distance=..5,limit=1] text set value [{text:"Earthshaker  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 6: NIGHTMARE (wb.k6, title IDs 21-24, tag Adv.BT5)
# ============================================================================
execute if score @s wb.k6 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT5,distance=..5,limit=1] text set value {text:"Nightmare  [Locked]",color:"dark_gray"}
execute if score @s wb.k6 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT5,distance=..5,limit=1] text set value [{text:"Nightmare  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k6"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k6 matches 10..24 unless score @s wb.title matches 21..24 run data modify entity @e[type=text_display,tag=Adv.BT5,distance=..5,limit=1] text set value [{text:"Nightmare  ",color:"light_purple"},{text:"Slayer",color:"white"}]
execute if score @s wb.k6 matches 25..49 unless score @s wb.title matches 21..24 run data modify entity @e[type=text_display,tag=Adv.BT5,distance=..5,limit=1] text set value [{text:"Nightmare  ",color:"light_purple"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k6 matches 50..99 unless score @s wb.title matches 21..24 run data modify entity @e[type=text_display,tag=Adv.BT5,distance=..5,limit=1] text set value [{text:"Nightmare  ",color:"light_purple"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k6 matches 100.. unless score @s wb.title matches 21..24 run data modify entity @e[type=text_display,tag=Adv.BT5,distance=..5,limit=1] text set value [{text:"Nightmare  ",color:"light_purple"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k6 matches 10.. if score @s wb.title matches 21..24 run data modify entity @e[type=text_display,tag=Adv.BT5,distance=..5,limit=1] text set value [{text:"Nightmare  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 7: INFERNAL TITAN (wb.k7, title IDs 25-28, tag Adv.BT6)
# ============================================================================
execute if score @s wb.k7 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT6,distance=..5,limit=1] text set value {text:"Infernal Titan  [Locked]",color:"dark_gray"}
execute if score @s wb.k7 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT6,distance=..5,limit=1] text set value [{text:"Infernal Titan  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k7"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k7 matches 10..24 unless score @s wb.title matches 25..28 run data modify entity @e[type=text_display,tag=Adv.BT6,distance=..5,limit=1] text set value [{text:"Infernal Titan  ",color:"red"},{text:"Slayer",color:"white"}]
execute if score @s wb.k7 matches 25..49 unless score @s wb.title matches 25..28 run data modify entity @e[type=text_display,tag=Adv.BT6,distance=..5,limit=1] text set value [{text:"Infernal Titan  ",color:"red"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k7 matches 50..99 unless score @s wb.title matches 25..28 run data modify entity @e[type=text_display,tag=Adv.BT6,distance=..5,limit=1] text set value [{text:"Infernal Titan  ",color:"red"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k7 matches 100.. unless score @s wb.title matches 25..28 run data modify entity @e[type=text_display,tag=Adv.BT6,distance=..5,limit=1] text set value [{text:"Infernal Titan  ",color:"red"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k7 matches 10.. if score @s wb.title matches 25..28 run data modify entity @e[type=text_display,tag=Adv.BT6,distance=..5,limit=1] text set value [{text:"Infernal Titan  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 8: SOUL WARDEN (wb.k8, title IDs 29-32, tag Adv.BT7)
# ============================================================================
execute if score @s wb.k8 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT7,distance=..5,limit=1] text set value {text:"Soul Warden  [Locked]",color:"dark_gray"}
execute if score @s wb.k8 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT7,distance=..5,limit=1] text set value [{text:"Soul Warden  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k8"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k8 matches 10..24 unless score @s wb.title matches 29..32 run data modify entity @e[type=text_display,tag=Adv.BT7,distance=..5,limit=1] text set value [{text:"Soul Warden  ",color:"dark_aqua"},{text:"Slayer",color:"white"}]
execute if score @s wb.k8 matches 25..49 unless score @s wb.title matches 29..32 run data modify entity @e[type=text_display,tag=Adv.BT7,distance=..5,limit=1] text set value [{text:"Soul Warden  ",color:"dark_aqua"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k8 matches 50..99 unless score @s wb.title matches 29..32 run data modify entity @e[type=text_display,tag=Adv.BT7,distance=..5,limit=1] text set value [{text:"Soul Warden  ",color:"dark_aqua"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k8 matches 100.. unless score @s wb.title matches 29..32 run data modify entity @e[type=text_display,tag=Adv.BT7,distance=..5,limit=1] text set value [{text:"Soul Warden  ",color:"dark_aqua"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k8 matches 10.. if score @s wb.title matches 29..32 run data modify entity @e[type=text_display,tag=Adv.BT7,distance=..5,limit=1] text set value [{text:"Soul Warden  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 9: CRIMSON BEHEMOTH (wb.k9, title IDs 33-36, tag Adv.BT8)
# ============================================================================
execute if score @s wb.k9 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT8,distance=..5,limit=1] text set value {text:"Crimson Behemoth  [Locked]",color:"dark_gray"}
execute if score @s wb.k9 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT8,distance=..5,limit=1] text set value [{text:"Crimson Behemoth  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k9"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k9 matches 10..24 unless score @s wb.title matches 33..36 run data modify entity @e[type=text_display,tag=Adv.BT8,distance=..5,limit=1] text set value [{text:"Crimson Behemoth  ",color:"dark_red"},{text:"Slayer",color:"white"}]
execute if score @s wb.k9 matches 25..49 unless score @s wb.title matches 33..36 run data modify entity @e[type=text_display,tag=Adv.BT8,distance=..5,limit=1] text set value [{text:"Crimson Behemoth  ",color:"dark_red"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k9 matches 50..99 unless score @s wb.title matches 33..36 run data modify entity @e[type=text_display,tag=Adv.BT8,distance=..5,limit=1] text set value [{text:"Crimson Behemoth  ",color:"dark_red"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k9 matches 100.. unless score @s wb.title matches 33..36 run data modify entity @e[type=text_display,tag=Adv.BT8,distance=..5,limit=1] text set value [{text:"Crimson Behemoth  ",color:"dark_red"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k9 matches 10.. if score @s wb.title matches 33..36 run data modify entity @e[type=text_display,tag=Adv.BT8,distance=..5,limit=1] text set value [{text:"Crimson Behemoth  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 10: VOID SOVEREIGN (wb.k10, title IDs 37-40, tag Adv.BT9)
# ============================================================================
execute if score @s wb.k10 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT9,distance=..5,limit=1] text set value {text:"Void Sovereign  [Locked]",color:"dark_gray"}
execute if score @s wb.k10 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT9,distance=..5,limit=1] text set value [{text:"Void Sovereign  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k10"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k10 matches 10..24 unless score @s wb.title matches 37..40 run data modify entity @e[type=text_display,tag=Adv.BT9,distance=..5,limit=1] text set value [{text:"Void Sovereign  ",color:"blue"},{text:"Slayer",color:"white"}]
execute if score @s wb.k10 matches 25..49 unless score @s wb.title matches 37..40 run data modify entity @e[type=text_display,tag=Adv.BT9,distance=..5,limit=1] text set value [{text:"Void Sovereign  ",color:"blue"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k10 matches 50..99 unless score @s wb.title matches 37..40 run data modify entity @e[type=text_display,tag=Adv.BT9,distance=..5,limit=1] text set value [{text:"Void Sovereign  ",color:"blue"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k10 matches 100.. unless score @s wb.title matches 37..40 run data modify entity @e[type=text_display,tag=Adv.BT9,distance=..5,limit=1] text set value [{text:"Void Sovereign  ",color:"blue"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k10 matches 10.. if score @s wb.title matches 37..40 run data modify entity @e[type=text_display,tag=Adv.BT9,distance=..5,limit=1] text set value [{text:"Void Sovereign  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BOSS 11: ENDER ARCHITECT (wb.k11, title IDs 41-44, tag Adv.BT10)
# ============================================================================
execute if score @s wb.k11 matches 0 run data modify entity @e[type=text_display,tag=Adv.BT10,distance=..5,limit=1] text set value {text:"Ender Architect  [Locked]",color:"dark_gray"}
execute if score @s wb.k11 matches 1..9 run data modify entity @e[type=text_display,tag=Adv.BT10,distance=..5,limit=1] text set value [{text:"Ender Architect  ",color:"dark_gray"},{score:{name:"@s",objective:"wb.k11"},color:"gray"},{text:"/10",color:"dark_gray"}]
execute if score @s wb.k11 matches 10..24 unless score @s wb.title matches 41..44 run data modify entity @e[type=text_display,tag=Adv.BT10,distance=..5,limit=1] text set value [{text:"Ender Architect  ",color:"light_purple"},{text:"Slayer",color:"white"}]
execute if score @s wb.k11 matches 25..49 unless score @s wb.title matches 41..44 run data modify entity @e[type=text_display,tag=Adv.BT10,distance=..5,limit=1] text set value [{text:"Ender Architect  ",color:"light_purple"},{text:"Conqueror",color:"white",bold:true}]
execute if score @s wb.k11 matches 50..99 unless score @s wb.title matches 41..44 run data modify entity @e[type=text_display,tag=Adv.BT10,distance=..5,limit=1] text set value [{text:"Ender Architect  ",color:"light_purple"},{text:"Vanquisher",color:"white",bold:true}]
execute if score @s wb.k11 matches 100.. unless score @s wb.title matches 41..44 run data modify entity @e[type=text_display,tag=Adv.BT10,distance=..5,limit=1] text set value [{text:"Ender Architect  ",color:"light_purple"},{text:"Nemesis",color:"white",bold:true}]
execute if score @s wb.k11 matches 10.. if score @s wb.title matches 41..44 run data modify entity @e[type=text_display,tag=Adv.BT10,distance=..5,limit=1] text set value [{text:"Ender Architect  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# WORLD BOSS CHAMPION (title ID 45, tag Adv.BTChamp)
# Requires all 11 bosses killed at least once
# ============================================================================
# Check if all bosses killed (use temp score to count)
scoreboard players set #wb_champ_check ec.var 0
execute if score @s wb.k1 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k2 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k3 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k4 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k5 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k6 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k7 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k8 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k9 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k10 matches 1.. run scoreboard players add #wb_champ_check ec.var 1
execute if score @s wb.k11 matches 1.. run scoreboard players add #wb_champ_check ec.var 1

# Locked (not all 11 killed)
execute unless score #wb_champ_check ec.var matches 11 run data modify entity @e[type=text_display,tag=Adv.BTChamp,distance=..5,limit=1] text set value [{text:"World Boss Champion  ",color:"dark_gray"},{text:"[",color:"dark_gray"},{text:"",extra:[{"score":{"name":"#wb_champ_check","objective":"ec.var"}}],color:"dark_gray"},{text:"/11]",color:"dark_gray"}]
# Unlocked, not active
execute if score #wb_champ_check ec.var matches 11 unless score @s wb.title matches 45 run data modify entity @e[type=text_display,tag=Adv.BTChamp,distance=..5,limit=1] text set value [{text:"World Boss Champion",color:"gold",bold:true}]
# Active
execute if score @s wb.title matches 45 run data modify entity @e[type=text_display,tag=Adv.BTChamp,distance=..5,limit=1] text set value [{text:"World Boss Champion  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]
