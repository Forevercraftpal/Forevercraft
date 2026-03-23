# Mining prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"gold"},{text:"Mining",color:"gold",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_mine matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Ore Magnet",color:"white",bold:true},{text:" — Nearby ore drops are pulled toward you",color:"gray"}]
execute if score @s adv.pres_mine matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: items within 8 blocks are pulled to you",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_mine matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_mine matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Ore Doubling",color:"white",bold:true},{text:" — 5% chance to double ore drops",color:"gray"}]
execute if score @s adv.pres_mine matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: chance on every ore mined",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_mine matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_mine matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Ancient Ore",color:"white",bold:true},{text:" — Ultra-rare drop worth 3 netherite or 20 tokens",color:"gray"}]
execute if score @s adv.pres_mine matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: ultra-rare drop while mining",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_mine matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
