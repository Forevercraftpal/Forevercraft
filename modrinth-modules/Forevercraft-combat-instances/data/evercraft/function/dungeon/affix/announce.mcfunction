# Party Dungeon Affixes — Announce active affixes
tellraw @a[tag=dg.player] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Party Affixes Active!",color:"gold",bold:true}]

# Affix 1
execute if score #dg_afx1 ec.var matches 1 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_red"},{text:"Glass Cannon",color:"red",bold:true},{text:" — +50% damage dealt and taken",color:"gray"}]
execute if score #dg_afx1 ec.var matches 2 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_aqua"},{text:"Speed Demon",color:"aqua",bold:true},{text:" — All mobs have Speed II",color:"gray"}]
execute if score #dg_afx1 ec.var matches 3 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"blue"},{text:"Armored",color:"blue",bold:true},{text:" — All mobs have +8 armor",color:"gray"}]
execute if score #dg_afx1 ec.var matches 4 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_gray"},{text:"Darkness",color:"dark_gray",bold:true},{text:" — Permanent darkness effect",color:"gray"}]
execute if score #dg_afx1 ec.var matches 5 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"yellow"},{text:"Timer",color:"yellow",bold:true},{text:" — 3-minute time limit",color:"gray"}]
execute if score #dg_afx1 ec.var matches 6 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_purple"},{text:"Vulnerability",color:"dark_purple",bold:true},{text:" — Players have -30% max health",color:"gray"}]
execute if score #dg_afx1 ec.var matches 7 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_green"},{text:"No Healing",color:"green",bold:true},{text:" — Natural regeneration disabled",color:"gray"}]
execute if score #dg_afx1 ec.var matches 8 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"light_purple"},{text:"Reinforcements",color:"light_purple",bold:true},{text:" — Extra mobs each wave",color:"gray"}]

# Affix 2
execute if score #dg_afx2 ec.var matches 1 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_red"},{text:"Glass Cannon",color:"red",bold:true},{text:" — +50% damage dealt and taken",color:"gray"}]
execute if score #dg_afx2 ec.var matches 2 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_aqua"},{text:"Speed Demon",color:"aqua",bold:true},{text:" — All mobs have Speed II",color:"gray"}]
execute if score #dg_afx2 ec.var matches 3 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"blue"},{text:"Armored",color:"blue",bold:true},{text:" — All mobs have +8 armor",color:"gray"}]
execute if score #dg_afx2 ec.var matches 4 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_gray"},{text:"Darkness",color:"dark_gray",bold:true},{text:" — Permanent darkness effect",color:"gray"}]
execute if score #dg_afx2 ec.var matches 5 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"yellow"},{text:"Timer",color:"yellow",bold:true},{text:" — 3-minute time limit",color:"gray"}]
execute if score #dg_afx2 ec.var matches 6 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_purple"},{text:"Vulnerability",color:"dark_purple",bold:true},{text:" — Players have -30% max health",color:"gray"}]
execute if score #dg_afx2 ec.var matches 7 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_green"},{text:"No Healing",color:"green",bold:true},{text:" — Natural regeneration disabled",color:"gray"}]
execute if score #dg_afx2 ec.var matches 8 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"light_purple"},{text:"Reinforcements",color:"light_purple",bold:true},{text:" — Extra mobs each wave",color:"gray"}]

# Affix 3
execute if score #dg_afx3 ec.var matches 1 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_red"},{text:"Glass Cannon",color:"red",bold:true},{text:" — +50% damage dealt and taken",color:"gray"}]
execute if score #dg_afx3 ec.var matches 2 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_aqua"},{text:"Speed Demon",color:"aqua",bold:true},{text:" — All mobs have Speed II",color:"gray"}]
execute if score #dg_afx3 ec.var matches 3 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"blue"},{text:"Armored",color:"blue",bold:true},{text:" — All mobs have +8 armor",color:"gray"}]
execute if score #dg_afx3 ec.var matches 4 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_gray"},{text:"Darkness",color:"dark_gray",bold:true},{text:" — Permanent darkness effect",color:"gray"}]
execute if score #dg_afx3 ec.var matches 5 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"yellow"},{text:"Timer",color:"yellow",bold:true},{text:" — 3-minute time limit",color:"gray"}]
execute if score #dg_afx3 ec.var matches 6 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_purple"},{text:"Vulnerability",color:"dark_purple",bold:true},{text:" — Players have -30% max health",color:"gray"}]
execute if score #dg_afx3 ec.var matches 7 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"dark_green"},{text:"No Healing",color:"green",bold:true},{text:" — Natural regeneration disabled",color:"gray"}]
execute if score #dg_afx3 ec.var matches 8 run tellraw @a[tag=dg.player] [{text:"  ▸ ",color:"light_purple"},{text:"Reinforcements",color:"light_purple",bold:true},{text:" — Extra mobs each wave",color:"gray"}]

# Loot multiplier announcement
execute if score #dg_afx_count ec.var matches 1 run tellraw @a[tag=dg.player] [{text:"  Loot Multiplier: ",color:"gray"},{text:"1.25x",color:"gold",bold:true}]
execute if score #dg_afx_count ec.var matches 2 run tellraw @a[tag=dg.player] [{text:"  Loot Multiplier: ",color:"gray"},{text:"1.5x",color:"gold",bold:true}]
execute if score #dg_afx_count ec.var matches 3 run tellraw @a[tag=dg.player] [{text:"  Loot Multiplier: ",color:"gray"},{text:"2.0x",color:"gold",bold:true}]

playsound minecraft:block.note_block.pling master @a[tag=dg.player] ~ ~ ~ 0.8 0.5
