# Refresh Special Titles page (page 6) — 15 items
# Dream Journal (SPT0-SPT1), Reputation (SPT2-SPT6), Guild Diplomacy (SPT7-SPT14)

# ============================================================
# Dream Journal Titles
# ============================================================

# SPT0: Dreamkeeper (bit 0, pow=1, ec.special_title=1)
scoreboard players operation #sp_check adv.temp = @s ec.special_titles
scoreboard players set #sp_pow adv.temp 1
scoreboard players operation #sp_check adv.temp /= #sp_pow adv.temp
scoreboard players operation #sp_check adv.temp %= #2 adv.temp
execute if score #sp_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.SPT0,distance=..5,limit=1] text set value {text:"Dreamkeeper  [Locked]",color:"dark_gray"}
execute if score #sp_check adv.temp matches 1 unless score @s ec.special_title matches 1 run data modify entity @e[type=text_display,tag=Adv.SPT0,distance=..5,limit=1] text set value {text:"Dreamkeeper",color:"#CE93D8"}
execute if score @s ec.special_title matches 1 run data modify entity @e[type=text_display,tag=Adv.SPT0,distance=..5,limit=1] text set value [{text:"Dreamkeeper  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT1: Dream Chronicler (bit 1, pow=2, ec.special_title=2)
scoreboard players operation #sp_check adv.temp = @s ec.special_titles
scoreboard players set #sp_pow adv.temp 2
scoreboard players operation #sp_check adv.temp /= #sp_pow adv.temp
scoreboard players operation #sp_check adv.temp %= #2 adv.temp
execute if score #sp_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.SPT1,distance=..5,limit=1] text set value {text:"Dream Chronicler  [Locked]",color:"dark_gray"}
execute if score #sp_check adv.temp matches 1 unless score @s ec.special_title matches 2 run data modify entity @e[type=text_display,tag=Adv.SPT1,distance=..5,limit=1] text set value {text:"Dream Chronicler",color:"#AB47BC"}
execute if score @s ec.special_title matches 2 run data modify entity @e[type=text_display,tag=Adv.SPT1,distance=..5,limit=1] text set value [{text:"Dream Chronicler  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================
# Reputation Titles
# ============================================================

# SPT2: Acquaintance (bit 2, pow=4, ec.special_title=3)
scoreboard players operation #sp_check adv.temp = @s ec.special_titles
scoreboard players set #sp_pow adv.temp 4
scoreboard players operation #sp_check adv.temp /= #sp_pow adv.temp
scoreboard players operation #sp_check adv.temp %= #2 adv.temp
execute if score #sp_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.SPT2,distance=..5,limit=1] text set value {text:"Acquaintance  [Locked]",color:"dark_gray"}
execute if score #sp_check adv.temp matches 1 unless score @s ec.special_title matches 3 run data modify entity @e[type=text_display,tag=Adv.SPT2,distance=..5,limit=1] text set value {text:"Acquaintance",color:"yellow"}
execute if score @s ec.special_title matches 3 run data modify entity @e[type=text_display,tag=Adv.SPT2,distance=..5,limit=1] text set value [{text:"Acquaintance  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT3: Friend (bit 3, pow=8, ec.special_title=4)
scoreboard players operation #sp_check adv.temp = @s ec.special_titles
scoreboard players set #sp_pow adv.temp 8
scoreboard players operation #sp_check adv.temp /= #sp_pow adv.temp
scoreboard players operation #sp_check adv.temp %= #2 adv.temp
execute if score #sp_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.SPT3,distance=..5,limit=1] text set value {text:"Friend  [Locked]",color:"dark_gray"}
execute if score #sp_check adv.temp matches 1 unless score @s ec.special_title matches 4 run data modify entity @e[type=text_display,tag=Adv.SPT3,distance=..5,limit=1] text set value {text:"Friend",color:"green"}
execute if score @s ec.special_title matches 4 run data modify entity @e[type=text_display,tag=Adv.SPT3,distance=..5,limit=1] text set value [{text:"Friend  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT4: Ally (bit 4, pow=16, ec.special_title=5)
scoreboard players operation #sp_check adv.temp = @s ec.special_titles
scoreboard players set #sp_pow adv.temp 16
scoreboard players operation #sp_check adv.temp /= #sp_pow adv.temp
scoreboard players operation #sp_check adv.temp %= #2 adv.temp
execute if score #sp_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.SPT4,distance=..5,limit=1] text set value {text:"Ally  [Locked]",color:"dark_gray"}
execute if score #sp_check adv.temp matches 1 unless score @s ec.special_title matches 5 run data modify entity @e[type=text_display,tag=Adv.SPT4,distance=..5,limit=1] text set value {text:"Ally",color:"aqua"}
execute if score @s ec.special_title matches 5 run data modify entity @e[type=text_display,tag=Adv.SPT4,distance=..5,limit=1] text set value [{text:"Ally  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT5: Hero (bit 5, pow=32, ec.special_title=6)
scoreboard players operation #sp_check adv.temp = @s ec.special_titles
scoreboard players set #sp_pow adv.temp 32
scoreboard players operation #sp_check adv.temp /= #sp_pow adv.temp
scoreboard players operation #sp_check adv.temp %= #2 adv.temp
execute if score #sp_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.SPT5,distance=..5,limit=1] text set value {text:"Hero  [Locked]",color:"dark_gray"}
execute if score #sp_check adv.temp matches 1 unless score @s ec.special_title matches 6 run data modify entity @e[type=text_display,tag=Adv.SPT5,distance=..5,limit=1] text set value {text:"Hero",color:"gold"}
execute if score @s ec.special_title matches 6 run data modify entity @e[type=text_display,tag=Adv.SPT5,distance=..5,limit=1] text set value [{text:"Hero  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT6: Legend (bit 6, pow=64, ec.special_title=7)
scoreboard players operation #sp_check adv.temp = @s ec.special_titles
scoreboard players set #sp_pow adv.temp 64
scoreboard players operation #sp_check adv.temp /= #sp_pow adv.temp
scoreboard players operation #sp_check adv.temp %= #2 adv.temp
execute if score #sp_check adv.temp matches 0 run data modify entity @e[type=text_display,tag=Adv.SPT6,distance=..5,limit=1] text set value {text:"Legend  [Locked]",color:"dark_gray"}
execute if score #sp_check adv.temp matches 1 unless score @s ec.special_title matches 7 run data modify entity @e[type=text_display,tag=Adv.SPT6,distance=..5,limit=1] text set value {text:"Legend",color:"gold",bold:true}
execute if score @s ec.special_title matches 7 run data modify entity @e[type=text_display,tag=Adv.SPT6,distance=..5,limit=1] text set value [{text:"Legend  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# ============================================================
# Guild Diplomacy Titles (view-only, earned through guild wars)
# ============================================================

# SPT7: Novice Victor (ec.gd_title = 1)
execute unless score @s ec.gd_title matches 1 run data modify entity @e[type=text_display,tag=Adv.SPT7,distance=..5,limit=1] text set value {text:"Novice Victor  [Locked]",color:"dark_gray"}
execute if score @s ec.gd_title matches 1 run data modify entity @e[type=text_display,tag=Adv.SPT7,distance=..5,limit=1] text set value [{text:"Novice Victor  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT8: Proven Victor (ec.gd_title = 2)
execute unless score @s ec.gd_title matches 2 run data modify entity @e[type=text_display,tag=Adv.SPT8,distance=..5,limit=1] text set value {text:"Proven Victor  [Locked]",color:"dark_gray"}
execute if score @s ec.gd_title matches 2 run data modify entity @e[type=text_display,tag=Adv.SPT8,distance=..5,limit=1] text set value [{text:"Proven Victor  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT9: Veteran Victor (ec.gd_title = 3)
execute unless score @s ec.gd_title matches 3 run data modify entity @e[type=text_display,tag=Adv.SPT9,distance=..5,limit=1] text set value {text:"Veteran Victor  [Locked]",color:"dark_gray"}
execute if score @s ec.gd_title matches 3 run data modify entity @e[type=text_display,tag=Adv.SPT9,distance=..5,limit=1] text set value [{text:"Veteran Victor  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT10: Legendary Victor (ec.gd_title = 4)
execute unless score @s ec.gd_title matches 4 run data modify entity @e[type=text_display,tag=Adv.SPT10,distance=..5,limit=1] text set value {text:"Legendary Victor  [Locked]",color:"dark_gray"}
execute if score @s ec.gd_title matches 4 run data modify entity @e[type=text_display,tag=Adv.SPT10,distance=..5,limit=1] text set value [{text:"Legendary Victor  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT11: Humbled (ec.gd_title = 5)
execute unless score @s ec.gd_title matches 5 run data modify entity @e[type=text_display,tag=Adv.SPT11,distance=..5,limit=1] text set value {text:"Humbled  [Locked]",color:"dark_gray"}
execute if score @s ec.gd_title matches 5 run data modify entity @e[type=text_display,tag=Adv.SPT11,distance=..5,limit=1] text set value [{text:"Humbled  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT12: Battered (ec.gd_title = 6)
execute unless score @s ec.gd_title matches 6 run data modify entity @e[type=text_display,tag=Adv.SPT12,distance=..5,limit=1] text set value {text:"Battered  [Locked]",color:"dark_gray"}
execute if score @s ec.gd_title matches 6 run data modify entity @e[type=text_display,tag=Adv.SPT12,distance=..5,limit=1] text set value [{text:"Battered  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT13: Weathered (ec.gd_title = 7)
execute unless score @s ec.gd_title matches 7 run data modify entity @e[type=text_display,tag=Adv.SPT13,distance=..5,limit=1] text set value {text:"Weathered  [Locked]",color:"dark_gray"}
execute if score @s ec.gd_title matches 7 run data modify entity @e[type=text_display,tag=Adv.SPT13,distance=..5,limit=1] text set value [{text:"Weathered  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]

# SPT14: Unbroken (ec.gd_title = 8)
execute unless score @s ec.gd_title matches 8 run data modify entity @e[type=text_display,tag=Adv.SPT14,distance=..5,limit=1] text set value {text:"Unbroken  [Locked]",color:"dark_gray"}
execute if score @s ec.gd_title matches 8 run data modify entity @e[type=text_display,tag=Adv.SPT14,distance=..5,limit=1] text set value [{text:"Unbroken  ",color:"green"},{text:"[ACTIVE]",color:"green",bold:true}]
