# Culinary prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"green"},{text:"Culinary",color:"green",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_culi matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Hearty Harvest",color:"white",bold:true},{text:" — +10% ingredient drop chance",color:"gray"}]
execute if score @s adv.pres_culi matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: gathering ingredients yields bonus drops",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_culi matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_culi matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Double Portion",color:"white",bold:true},{text:" — 15% chance to cook for free",color:"gray"}]
execute if score @s adv.pres_culi matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: ingredients not consumed on lucky cook",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_culi matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_culi matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Master Chef",color:"white",bold:true},{text:" — Double all meal buff durations",color:"gray"}]
execute if score @s adv.pres_culi matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: all cooking buffs last twice as long",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_culi matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
