# Blacksmith prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"gray"},{text:"Blacksmith",color:"gray",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_blac matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Master Alloy",color:"white",bold:true},{text:" — 2x smelt output chance + 50% less anvil XP",color:"gray"}]
execute if score @s adv.pres_blac matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: applies to furnaces and anvils",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_blac matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_blac matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Efficient Fuel",color:"white",bold:true},{text:" — 50% chance to not consume furnace fuel",color:"gray"}]
execute if score @s adv.pres_blac matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: chance on each furnace fuel tick",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_blac matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_blac matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Auto-Smelt",color:"white",bold:true},{text:" — Ores drop their smelted form when mined",color:"gray"}]
execute if score @s adv.pres_blac matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: mine any ore to get ingots directly",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_blac matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
