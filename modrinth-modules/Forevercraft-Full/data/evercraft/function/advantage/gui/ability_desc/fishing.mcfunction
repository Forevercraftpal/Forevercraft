# Fishing prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"blue"},{text:"Fishing",color:"blue",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_fish matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Water Net",color:"white",bold:true},{text:" — Place a passive fish trap that auto-catches hourly",color:"gray"}]
execute if score @s adv.pres_fish matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Place the net barrel near water to deploy",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_fish matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_fish matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Second Net",color:"white",bold:true},{text:" — Deploy a second water net",color:"gray"}]
execute if score @s adv.pres_fish matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Place the second net barrel near water",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_fish matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_fish matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Master Angler",color:"white",bold:true},{text:" — Third net + all nets catch twice as fast",color:"gray"}]
execute if score @s adv.pres_fish matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: all nets upgraded automatically",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_fish matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
