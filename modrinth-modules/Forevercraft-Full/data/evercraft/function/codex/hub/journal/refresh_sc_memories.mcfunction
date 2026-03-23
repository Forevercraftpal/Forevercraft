# Journal — Refresh Scrapbook Memory Detail
# Reads active pet memory bitfield and sets each display to checkmark or X
# Run as: player

execute unless entity @s[tag=companion.activepet] run return 0

# Get memory bitfield
function evercraft:companions/memories/get_count
# #mem_bits companion.calc is set by get_count (from string_to_int)

# Memory names array — check each bit and set text
# Bit 0: First Steps
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b0 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem0,distance=..5,limit=1] text set value {text:"\u2714 First Steps",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem0,distance=..5,limit=1] text set value {text:"\u2718 First Steps",color:"dark_gray"}

# Bit 1: The Hunt
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b1 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem1,distance=..5,limit=1] text set value {text:"\u2714 The Hunt",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem1,distance=..5,limit=1] text set value {text:"\u2718 The Hunt",color:"dark_gray"}

# Bit 2: Against the Colossus
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b2 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem2,distance=..5,limit=1] text set value {text:"\u2714 Vs. the Colossus",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem2,distance=..5,limit=1] text set value {text:"\u2718 Vs. the Colossus",color:"dark_gray"}

# Bit 3: Treasure Found
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b3 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem3,distance=..5,limit=1] text set value {text:"\u2714 Treasure Found",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem3,distance=..5,limit=1] text set value {text:"\u2718 Treasure Found",color:"dark_gray"}

# Bit 4: New Horizons
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b4 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem4,distance=..5,limit=1] text set value {text:"\u2714 New Horizons",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem4,distance=..5,limit=1] text set value {text:"\u2718 New Horizons",color:"dark_gray"}

# Bit 5: The Long Road
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b5 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem5,distance=..5,limit=1] text set value {text:"\u2714 The Long Road",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem5,distance=..5,limit=1] text set value {text:"\u2718 The Long Road",color:"dark_gray"}

# Bit 6: Into the Depths
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b6 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem6,distance=..5,limit=1] text set value {text:"\u2714 Into the Depths",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem6,distance=..5,limit=1] text set value {text:"\u2718 Into the Depths",color:"dark_gray"}

# Bit 7: Through the Portal
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b7 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem7,distance=..5,limit=1] text set value {text:"\u2714 Through the Portal",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem7,distance=..5,limit=1] text set value {text:"\u2718 Through the Portal",color:"dark_gray"}

# Bit 8: A Mythical Discovery
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b8 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem8,distance=..5,limit=1] text set value {text:"\u2714 Mythical Discovery",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem8,distance=..5,limit=1] text set value {text:"\u2718 Mythical Discovery",color:"dark_gray"}

# Bit 9: Eternal Bond
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b9 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem9,distance=..5,limit=1] text set value {text:"\u2714 Eternal Bond",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem9,distance=..5,limit=1] text set value {text:"\u2718 Eternal Bond",color:"dark_gray"}

# Bit 10: Peaks of the World
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b10 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem10,distance=..5,limit=1] text set value {text:"\u2714 Peaks of the World",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem10,distance=..5,limit=1] text set value {text:"\u2718 Peaks of the World",color:"dark_gray"}

# Bit 11: Warden's Shadow
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b11 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem11,distance=..5,limit=1] text set value {text:"\u2714 Warden's Shadow",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem11,distance=..5,limit=1] text set value {text:"\u2718 Warden's Shadow",color:"dark_gray"}

# Bit 12: Ocean Abyss
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b12 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem12,distance=..5,limit=1] text set value {text:"\u2714 Ocean Abyss",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem12,distance=..5,limit=1] text set value {text:"\u2718 Ocean Abyss",color:"dark_gray"}

# Bit 13: Whiteout
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b13 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem13,distance=..5,limit=1] text set value {text:"\u2714 Whiteout",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem13,distance=..5,limit=1] text set value {text:"\u2718 Whiteout",color:"dark_gray"}

# Bit 14: Trial by Fire
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b14 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem14,distance=..5,limit=1] text set value {text:"\u2714 Trial by Fire",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem14,distance=..5,limit=1] text set value {text:"\u2718 Trial by Fire",color:"dark_gray"}

# Bit 15: Near Death
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b15 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem15,distance=..5,limit=1] text set value {text:"\u2714 Near Death",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem15,distance=..5,limit=1] text set value {text:"\u2718 Near Death",color:"dark_gray"}

# Bit 16: Duelist's Glory
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b16 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem16,distance=..5,limit=1] text set value {text:"\u2714 Duelist's Glory",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem16,distance=..5,limit=1] text set value {text:"\u2718 Duelist's Glory",color:"dark_gray"}

# Bit 17: Witching Hour
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b17 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem17,distance=..5,limit=1] text set value {text:"\u2714 Witching Hour",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem17,distance=..5,limit=1] text set value {text:"\u2718 Witching Hour",color:"dark_gray"}

# Bit 18: Marathon
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b18 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem18,distance=..5,limit=1] text set value {text:"\u2714 Marathon",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem18,distance=..5,limit=1] text set value {text:"\u2718 Marathon",color:"dark_gray"}

# Bit 19: Pilgrimage
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b19 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem19,distance=..5,limit=1] text set value {text:"\u2714 Pilgrimage",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem19,distance=..5,limit=1] text set value {text:"\u2718 Pilgrimage",color:"dark_gray"}

# Bit 20: Homeward Bound
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b20 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem20,distance=..5,limit=1] text set value {text:"\u2714 Homeward Bound",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem20,distance=..5,limit=1] text set value {text:"\u2718 Homeward Bound",color:"dark_gray"}

# Bit 21: Master's Journey
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b21 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem21,distance=..5,limit=1] text set value {text:"\u2714 Master's Journey",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem21,distance=..5,limit=1] text set value {text:"\u2718 Master's Journey",color:"dark_gray"}

# Bit 22: Pack Leader
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b22 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem22,distance=..5,limit=1] text set value {text:"\u2714 Pack Leader",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem22,distance=..5,limit=1] text set value {text:"\u2718 Pack Leader",color:"dark_gray"}

# Bit 23: Golden Feast
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b23 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem23,distance=..5,limit=1] text set value {text:"\u2714 Golden Feast",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem23,distance=..5,limit=1] text set value {text:"\u2718 Golden Feast",color:"dark_gray"}

# Bit 24: Starlight Summit
scoreboard players operation #check companion.calc = #mem_bits companion.calc
scoreboard players operation #check companion.calc /= #mem_b24 companion.calc
scoreboard players operation #check companion.calc %= #2 companion.calc
execute if score #check companion.calc matches 1 run data modify entity @e[type=text_display,tag=Adv.JnScMem24,distance=..5,limit=1] text set value {text:"\u2714 Starlight Summit",color:"green"}
execute if score #check companion.calc matches 0 run data modify entity @e[type=text_display,tag=Adv.JnScMem24,distance=..5,limit=1] text set value {text:"\u2718 Starlight Summit",color:"dark_gray"}
