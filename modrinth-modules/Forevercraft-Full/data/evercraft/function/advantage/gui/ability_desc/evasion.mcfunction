# Evasion prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"white"},{text:"Evasion",color:"white",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_evas matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Shadow Counter",color:"white",bold:true},{text:" — Teleport behind your attacker on a successful dodge",color:"gray"}]
execute if score @s adv.pres_evas matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Triggers automatically when you dodge",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_evas matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_evas matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Vanishing Dodge",color:"white",bold:true},{text:" — Become invisible for 2s when you dodge",color:"gray"}]
execute if score @s adv.pres_evas matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Triggers automatically when you dodge",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_evas matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_evas matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Perfect Evasion",color:"white",bold:true},{text:" — 1s guaranteed dodge window after dodging",color:"gray"}]
execute if score @s adv.pres_evas matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Triggers automatically after any dodge",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_evas matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
