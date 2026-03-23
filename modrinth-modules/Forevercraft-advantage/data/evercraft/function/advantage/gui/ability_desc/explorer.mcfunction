# Explorer prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"dark_aqua"},{text:"Explorer",color:"dark_aqua",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_expl matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Structure Sense",color:"white",bold:true},{text:" — Alert when within 100 blocks of a structure",color:"gray"}]
execute if score @s adv.pres_expl matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: alerts appear while exploring",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_expl matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_expl matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Cartographer",color:"white",bold:true},{text:" — Locate nearest structure on command (50hr cooldown)",color:"gray"}]
execute if score @s adv.pres_expl matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Use: /trigger adv.explore set 1",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_expl matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_expl matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Wayfinder",color:"white",bold:true},{text:" — Teleport to nearest unexplored structure (24hr cooldown)",color:"gray"}]
execute if score @s adv.pres_expl matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Use: /trigger adv.explore set 2",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_expl matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
