# Gathering prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"green"},{text:"Gathering",color:"green",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_gath matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Green Thumb",color:"white",bold:true},{text:" — Crops auto-replant on harvest",color:"gray"}]
execute if score @s adv.pres_gath matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: break a mature crop to auto-replant",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_gath matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_gath matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Fertile Aura",color:"white",bold:true},{text:" — 25% crop growth speed in 16-block radius",color:"gray"}]
execute if score @s adv.pres_gath matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: nearby crops grow faster",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_gath matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_gath matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Harvest Lord",color:"white",bold:true},{text:" — 50% growth speed, 32-block range + crop vein mine",color:"gray"}]
execute if score @s adv.pres_gath matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: extended aura + break one crop to harvest nearby",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_gath matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
