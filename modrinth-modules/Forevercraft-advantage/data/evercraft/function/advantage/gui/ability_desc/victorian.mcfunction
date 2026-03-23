# Victorian prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"dark_red"},{text:"Victorian",color:"dark_red",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_vict matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"XP Siphon",color:"white",bold:true},{text:" — Gain +1 XP passively every 16 seconds",color:"gray"}]
execute if score @s adv.pres_vict matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: XP trickles in automatically",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_vict matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_vict matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Bloodthirst",color:"white",bold:true},{text:" — +50% bonus XP from mob crates and patrons",color:"gray"}]
execute if score @s adv.pres_vict matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: always active on crate/patron rewards",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_vict matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_vict matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Spoils of War",color:"white",bold:true},{text:" — Doubled mob crate spawn chance",color:"gray"}]
execute if score @s adv.pres_vict matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: extra 25% roll on every patron kill",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_vict matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
