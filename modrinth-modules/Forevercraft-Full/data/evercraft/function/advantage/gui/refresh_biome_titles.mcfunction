# Refresh Biome Titles page — updates display based on bitfield and active title
# Run as the player

# ============================================================================
# BIOME 0: MEADOW KEEPER (bit 0, pow=1, bm.title=1, tag Adv.BMT0)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 1
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT0,distance=..5,limit=1] text set value {text:"Meadow Keeper  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 1 run data modify entity @e[type=text_display,tag=Adv.BMT0,distance=..5,limit=1] text set value {text:"Meadow Keeper",color:"green"}
execute if score @s bm.title matches 1 run data modify entity @e[type=text_display,tag=Adv.BMT0,distance=..5,limit=1] text set value [{text:"Meadow Keeper  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 1: FORESTBORN (bit 1, pow=2, bm.title=2, tag Adv.BMT1)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 2
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT1,distance=..5,limit=1] text set value {text:"Forestborn  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 2 run data modify entity @e[type=text_display,tag=Adv.BMT1,distance=..5,limit=1] text set value {text:"Forestborn",color:"dark_green"}
execute if score @s bm.title matches 2 run data modify entity @e[type=text_display,tag=Adv.BMT1,distance=..5,limit=1] text set value [{text:"Forestborn  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 2: BLOOMKEEPER (bit 2, pow=4, bm.title=3, tag Adv.BMT2)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 4
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT2,distance=..5,limit=1] text set value {text:"Bloomkeeper  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 3 run data modify entity @e[type=text_display,tag=Adv.BMT2,distance=..5,limit=1] text set value {text:"Bloomkeeper",color:"green"}
execute if score @s bm.title matches 3 run data modify entity @e[type=text_display,tag=Adv.BMT2,distance=..5,limit=1] text set value [{text:"Bloomkeeper  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 3: SHADOWSTRIDER (bit 3, pow=8, bm.title=4, tag Adv.BMT3)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 8
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT3,distance=..5,limit=1] text set value {text:"Shadowstrider  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 4 run data modify entity @e[type=text_display,tag=Adv.BMT3,distance=..5,limit=1] text set value {text:"Shadowstrider",color:"dark_gray"}
execute if score @s bm.title matches 4 run data modify entity @e[type=text_display,tag=Adv.BMT3,distance=..5,limit=1] text set value [{text:"Shadowstrider  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 4: FROSTPINE WARDEN (bit 4, pow=16, bm.title=5, tag Adv.BMT4)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 16
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT4,distance=..5,limit=1] text set value {text:"Frostpine Warden  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 5 run data modify entity @e[type=text_display,tag=Adv.BMT4,distance=..5,limit=1] text set value {text:"Frostpine Warden",color:"aqua"}
execute if score @s bm.title matches 5 run data modify entity @e[type=text_display,tag=Adv.BMT4,distance=..5,limit=1] text set value [{text:"Frostpine Warden  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 5: PEAKWALKER (bit 5, pow=32, bm.title=6, tag Adv.BMT5)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 32
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT5,distance=..5,limit=1] text set value {text:"Peakwalker  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 6 run data modify entity @e[type=text_display,tag=Adv.BMT5,distance=..5,limit=1] text set value {text:"Peakwalker",color:"white"}
execute if score @s bm.title matches 6 run data modify entity @e[type=text_display,tag=Adv.BMT5,distance=..5,limit=1] text set value [{text:"Peakwalker  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 6: CANOPY RUNNER (bit 6, pow=64, bm.title=7, tag Adv.BMT6)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 64
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT6,distance=..5,limit=1] text set value {text:"Canopy Runner  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 7 run data modify entity @e[type=text_display,tag=Adv.BMT6,distance=..5,limit=1] text set value {text:"Canopy Runner",color:"dark_green"}
execute if score @s bm.title matches 7 run data modify entity @e[type=text_display,tag=Adv.BMT6,distance=..5,limit=1] text set value [{text:"Canopy Runner  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 7: DUNE SOVEREIGN (bit 7, pow=128, bm.title=8, tag Adv.BMT7)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 128
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT7,distance=..5,limit=1] text set value {text:"Dune Sovereign  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 8 run data modify entity @e[type=text_display,tag=Adv.BMT7,distance=..5,limit=1] text set value {text:"Dune Sovereign",color:"gold"}
execute if score @s bm.title matches 8 run data modify entity @e[type=text_display,tag=Adv.BMT7,distance=..5,limit=1] text set value [{text:"Dune Sovereign  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 8: SUNWATCHER (bit 8, pow=256, bm.title=9, tag Adv.BMT8)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 256
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT8,distance=..5,limit=1] text set value {text:"Sunwatcher  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 9 run data modify entity @e[type=text_display,tag=Adv.BMT8,distance=..5,limit=1] text set value {text:"Sunwatcher",color:"yellow"}
execute if score @s bm.title matches 9 run data modify entity @e[type=text_display,tag=Adv.BMT8,distance=..5,limit=1] text set value [{text:"Sunwatcher  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 9: TIDECALLER (bit 9, pow=512, bm.title=10, tag Adv.BMT9)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 512
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT9,distance=..5,limit=1] text set value {text:"Tidecaller  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 10 run data modify entity @e[type=text_display,tag=Adv.BMT9,distance=..5,limit=1] text set value {text:"Tidecaller",color:"aqua"}
execute if score @s bm.title matches 10 run data modify entity @e[type=text_display,tag=Adv.BMT9,distance=..5,limit=1] text set value [{text:"Tidecaller  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 10: RIVERGUARD (bit 10, pow=1024, bm.title=11, tag Adv.BMT10)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 1024
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT10,distance=..5,limit=1] text set value {text:"Riverguard  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 11 run data modify entity @e[type=text_display,tag=Adv.BMT10,distance=..5,limit=1] text set value {text:"Riverguard",color:"blue"}
execute if score @s bm.title matches 11 run data modify entity @e[type=text_display,tag=Adv.BMT10,distance=..5,limit=1] text set value [{text:"Riverguard  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 11: BOGSTRIDER (bit 11, pow=2048, bm.title=12, tag Adv.BMT11)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 2048
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT11,distance=..5,limit=1] text set value {text:"Bogstrider  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 12 run data modify entity @e[type=text_display,tag=Adv.BMT11,distance=..5,limit=1] text set value {text:"Bogstrider",color:"dark_green"}
execute if score @s bm.title matches 12 run data modify entity @e[type=text_display,tag=Adv.BMT11,distance=..5,limit=1] text set value [{text:"Bogstrider  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 12: SPOREKEEPER (bit 12, pow=4096, bm.title=13, tag Adv.BMT12)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 4096
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT12,distance=..5,limit=1] text set value {text:"Sporekeeper  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 13 run data modify entity @e[type=text_display,tag=Adv.BMT12,distance=..5,limit=1] text set value {text:"Sporekeeper",color:"dark_purple"}
execute if score @s bm.title matches 13 run data modify entity @e[type=text_display,tag=Adv.BMT12,distance=..5,limit=1] text set value [{text:"Sporekeeper  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 13: FROSTBOUND (bit 13, pow=8192, bm.title=14, tag Adv.BMT13)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 8192
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT13,distance=..5,limit=1] text set value {text:"Frostbound  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 14 run data modify entity @e[type=text_display,tag=Adv.BMT13,distance=..5,limit=1] text set value {text:"Frostbound",color:"aqua"}
execute if score @s bm.title matches 14 run data modify entity @e[type=text_display,tag=Adv.BMT13,distance=..5,limit=1] text set value [{text:"Frostbound  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 14: MESA WALKER (bit 14, pow=16384, bm.title=15, tag Adv.BMT14)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 16384
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT14,distance=..5,limit=1] text set value {text:"Mesa Walker  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 15 run data modify entity @e[type=text_display,tag=Adv.BMT14,distance=..5,limit=1] text set value {text:"Mesa Walker",color:"gold"}
execute if score @s bm.title matches 15 run data modify entity @e[type=text_display,tag=Adv.BMT14,distance=..5,limit=1] text set value [{text:"Mesa Walker  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 15: VERDANT DWELLER (bit 15, pow=32768, bm.title=16, tag Adv.BMT15)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 32768
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT15,distance=..5,limit=1] text set value {text:"Verdant Dweller  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 16 run data modify entity @e[type=text_display,tag=Adv.BMT15,distance=..5,limit=1] text set value {text:"Verdant Dweller",color:"dark_green"}
execute if score @s bm.title matches 16 run data modify entity @e[type=text_display,tag=Adv.BMT15,distance=..5,limit=1] text set value [{text:"Verdant Dweller  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 16: STALACTITE SAGE (bit 16, pow=65536, bm.title=17, tag Adv.BMT16)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 65536
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT16,distance=..5,limit=1] text set value {text:"Stalactite Sage  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 17 run data modify entity @e[type=text_display,tag=Adv.BMT16,distance=..5,limit=1] text set value {text:"Stalactite Sage",color:"gray"}
execute if score @s bm.title matches 17 run data modify entity @e[type=text_display,tag=Adv.BMT16,distance=..5,limit=1] text set value [{text:"Stalactite Sage  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 17: VOID WARDEN (bit 17, pow=131072, bm.title=18, tag Adv.BMT17)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 131072
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT17,distance=..5,limit=1] text set value {text:"Void Warden  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 18 run data modify entity @e[type=text_display,tag=Adv.BMT17,distance=..5,limit=1] text set value {text:"Void Warden",color:"dark_purple"}
execute if score @s bm.title matches 18 run data modify entity @e[type=text_display,tag=Adv.BMT17,distance=..5,limit=1] text set value [{text:"Void Warden  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 18: ASHBORN (bit 18, pow=262144, bm.title=19, tag Adv.BMT18)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 262144
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT18,distance=..5,limit=1] text set value {text:"Ashborn  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 19 run data modify entity @e[type=text_display,tag=Adv.BMT18,distance=..5,limit=1] text set value {text:"Ashborn",color:"red"}
execute if score @s bm.title matches 19 run data modify entity @e[type=text_display,tag=Adv.BMT18,distance=..5,limit=1] text set value [{text:"Ashborn  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 19: CRIMSON STALKER (bit 19, pow=524288, bm.title=20, tag Adv.BMT19)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 524288
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT19,distance=..5,limit=1] text set value {text:"Crimson Stalker  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 20 run data modify entity @e[type=text_display,tag=Adv.BMT19,distance=..5,limit=1] text set value {text:"Crimson Stalker",color:"dark_red"}
execute if score @s bm.title matches 20 run data modify entity @e[type=text_display,tag=Adv.BMT19,distance=..5,limit=1] text set value [{text:"Crimson Stalker  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 20: WARPED WALKER (bit 20, pow=1048576, bm.title=21, tag Adv.BMT20)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 1048576
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT20,distance=..5,limit=1] text set value {text:"Warped Walker  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 21 run data modify entity @e[type=text_display,tag=Adv.BMT20,distance=..5,limit=1] text set value {text:"Warped Walker",color:"dark_aqua"}
execute if score @s bm.title matches 21 run data modify entity @e[type=text_display,tag=Adv.BMT20,distance=..5,limit=1] text set value [{text:"Warped Walker  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 21: DELTASTRIDER (bit 21, pow=2097152, bm.title=22, tag Adv.BMT21)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 2097152
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT21,distance=..5,limit=1] text set value {text:"Deltastrider  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 22 run data modify entity @e[type=text_display,tag=Adv.BMT21,distance=..5,limit=1] text set value {text:"Deltastrider",color:"dark_red"}
execute if score @s bm.title matches 22 run data modify entity @e[type=text_display,tag=Adv.BMT21,distance=..5,limit=1] text set value [{text:"Deltastrider  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 22: SOULBOUND (bit 22, pow=4194304, bm.title=23, tag Adv.BMT22)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 4194304
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT22,distance=..5,limit=1] text set value {text:"Soulbound  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 23 run data modify entity @e[type=text_display,tag=Adv.BMT22,distance=..5,limit=1] text set value {text:"Soulbound",color:"dark_aqua"}
execute if score @s bm.title matches 23 run data modify entity @e[type=text_display,tag=Adv.BMT22,distance=..5,limit=1] text set value [{text:"Soulbound  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 23: ENDER WARDEN (bit 23, pow=8388608, bm.title=24, tag Adv.BMT23)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 8388608
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT23,distance=..5,limit=1] text set value {text:"Ender Warden  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 24 run data modify entity @e[type=text_display,tag=Adv.BMT23,distance=..5,limit=1] text set value {text:"Ender Warden",color:"light_purple"}
execute if score @s bm.title matches 24 run data modify entity @e[type=text_display,tag=Adv.BMT23,distance=..5,limit=1] text set value [{text:"Ender Warden  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================================
# BIOME 24: STORMCHASER (bit 24, pow=16777216, bm.title=25, tag Adv.BMT24)
# ============================================================================
scoreboard players operation #bm_check adv.temp = @s bm.titles
scoreboard players set #bm_pow adv.temp 16777216
scoreboard players operation #bm_check adv.temp /= #bm_pow adv.temp
scoreboard players operation #bm_check adv.temp %= #2 adv.temp
execute if score #bm_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.BMT24,distance=..5,limit=1] text set value {text:"Stormchaser  [Locked]",color:"dark_gray"}
execute if score #bm_check adv.temp matches 1 unless score @s bm.title matches 25 run data modify entity @e[type=text_display,tag=Adv.BMT24,distance=..5,limit=1] text set value {text:"Stormchaser",color:"yellow"}
execute if score @s bm.title matches 25 run data modify entity @e[type=text_display,tag=Adv.BMT24,distance=..5,limit=1] text set value [{text:"Stormchaser  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]
