# Trophy Gallery — Refresh text_display entities based on earned state
# Run as player at player position
# Uses bitfield: ec.cf_trophies

# Extract all 15 bits into temp scores
scoreboard players operation #t_bits ec.temp = @s ec.cf_trophies

# Bit 0: Hearthkeeper
scoreboard players operation #t0 ec.temp = #t_bits ec.temp
scoreboard players operation #t0 ec.temp %= #2 ec.const
# Bit 1: Grand Architect
scoreboard players operation #t1 ec.temp = #t_bits ec.temp
scoreboard players operation #t1 ec.temp /= #trophy_bit_1 ec.const
scoreboard players operation #t1 ec.temp %= #2 ec.const
# Bit 2: Legendary Builder
scoreboard players operation #t2 ec.temp = #t_bits ec.temp
scoreboard players operation #t2 ec.temp /= #trophy_bit_2 ec.const
scoreboard players operation #t2 ec.temp %= #2 ec.const
# Bit 3: Dragon Slayer
scoreboard players operation #t3 ec.temp = #t_bits ec.temp
scoreboard players operation #t3 ec.temp /= #trophy_bit_3 ec.const
scoreboard players operation #t3 ec.temp %= #2 ec.const
# Bit 4: Wither Bane
scoreboard players operation #t4 ec.temp = #t_bits ec.temp
scoreboard players operation #t4 ec.temp /= #trophy_bit_4 ec.const
scoreboard players operation #t4 ec.temp %= #2 ec.const
# Bit 5: World Explorer
scoreboard players operation #t5 ec.temp = #t_bits ec.temp
scoreboard players operation #t5 ec.temp /= #trophy_bit_5 ec.const
scoreboard players operation #t5 ec.temp %= #2 ec.const
# Bit 6: Lore Keeper
scoreboard players operation #t6 ec.temp = #t_bits ec.temp
scoreboard players operation #t6 ec.temp /= #trophy_bit_6 ec.const
scoreboard players operation #t6 ec.temp %= #2 ec.const
# Bit 7: Battle Master
scoreboard players operation #t7 ec.temp = #t_bits ec.temp
scoreboard players operation #t7 ec.temp /= #trophy_bit_7 ec.const
scoreboard players operation #t7 ec.temp %= #2 ec.const
# Bit 8: Pack Leader
scoreboard players operation #t8 ec.temp = #t_bits ec.temp
scoreboard players operation #t8 ec.temp /= #trophy_bit_8 ec.const
scoreboard players operation #t8 ec.temp %= #2 ec.const
# Bit 9: CraftForever Star
scoreboard players operation #t9 ec.temp = #t_bits ec.temp
scoreboard players operation #t9 ec.temp /= #trophy_bit_9 ec.const
scoreboard players operation #t9 ec.temp %= #2 ec.const
# Bit 10: Treasure Hunter
scoreboard players operation #t10 ec.temp = #t_bits ec.temp
scoreboard players operation #t10 ec.temp /= #trophy_bit_10 ec.const
scoreboard players operation #t10 ec.temp %= #2 ec.const
# Bit 11: Expeditionist
scoreboard players operation #t11 ec.temp = #t_bits ec.temp
scoreboard players operation #t11 ec.temp /= #trophy_bit_11 ec.const
scoreboard players operation #t11 ec.temp %= #2 ec.const
# Bit 12: Realm Champion
scoreboard players operation #t12 ec.temp = #t_bits ec.temp
scoreboard players operation #t12 ec.temp /= #trophy_bit_12 ec.const
scoreboard players operation #t12 ec.temp %= #2 ec.const
# Bit 13: Spirit Forger
scoreboard players operation #t13 ec.temp = #t_bits ec.temp
scoreboard players operation #t13 ec.temp /= #trophy_bit_13 ec.const
scoreboard players operation #t13 ec.temp %= #2 ec.const
# Bit 14: Guild Legend
scoreboard players operation #t14 ec.temp = #t_bits ec.temp
scoreboard players operation #t14 ec.temp /= #trophy_bit_14 ec.const
scoreboard players operation #t14 ec.temp %= #2 ec.const

# === Update text_display entities ===

# 0: Hearthkeeper
execute if score #t0 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy0,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"gold"},{text:"Hearthkeeper",color:"gold"}]
execute if score #t0 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy0,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 1: Grand Architect
execute if score #t1 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy1,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"#66BB6A"},{text:"Grand Architect",color:"#66BB6A"}]
execute if score #t1 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy1,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 2: Legendary Builder
execute if score #t2 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy2,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"light_purple"},{text:"Legendary Builder",color:"light_purple"}]
execute if score #t2 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy2,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 3: Dragon Slayer
execute if score #t3 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy3,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"dark_purple"},{text:"Dragon Slayer",color:"dark_purple"}]
execute if score #t3 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy3,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 4: Wither Bane
execute if score #t4 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy4,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"dark_aqua"},{text:"Wither Bane",color:"dark_aqua"}]
execute if score #t4 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy4,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 5: World Explorer
execute if score #t5 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy5,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"green"},{text:"World Explorer",color:"green"}]
execute if score #t5 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy5,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 6: Lore Keeper
execute if score #t6 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy6,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"yellow"},{text:"Lore Keeper",color:"yellow"}]
execute if score #t6 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy6,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 7: Battle Master
execute if score #t7 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy7,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"red"},{text:"Battle Master",color:"red"}]
execute if score #t7 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy7,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 8: Pack Leader
execute if score #t8 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy8,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"#FF8C00"},{text:"Pack Leader",color:"#FF8C00"}]
execute if score #t8 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy8,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 9: CraftForever Star
execute if score #t9 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy9,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"aqua"},{text:"CraftForever Star",color:"aqua"}]
execute if score #t9 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy9,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 10: Treasure Hunter
execute if score #t10 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy10,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"gold"},{text:"Treasure Hunter",color:"gold"}]
execute if score #t10 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy10,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 11: Expeditionist
execute if score #t11 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy11,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"dark_aqua"},{text:"Expeditionist",color:"dark_aqua"}]
execute if score #t11 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy11,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 12: Realm Champion
execute if score #t12 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy12,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"#E0B0FF"},{text:"Realm Champion",color:"#E0B0FF"}]
execute if score #t12 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy12,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 13: Spirit Forger
execute if score #t13 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy13,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"dark_red"},{text:"Spirit Forger",color:"dark_red"}]
execute if score #t13 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy13,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]

# 14: Guild Legend
execute if score #t14 ec.temp matches 1 as @e[type=text_display,tag=CF.Trophy14,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2605 ",color:"dark_purple"},{text:"Guild Legend",color:"dark_purple"}]
execute if score #t14 ec.temp matches 0 as @e[type=text_display,tag=CF.Trophy14,distance=..5,limit=1] run data modify entity @s text set value [{text:"\u2606 ",color:"dark_gray"},{text:"???",color:"dark_gray"}]
