# Beastmaster prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"green"},{text:"Beastmaster",color:"green",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_beas matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Alpha Bond",color:"white",bold:true},{text:" — Companions deal +25% damage",color:"gray"}]
execute if score @s adv.pres_beas matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: applies to all your summoned companions",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_beas matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_beas matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Pack Tactics",color:"white",bold:true},{text:" — Wolves within 16 blocks gain Strength I + Resistance I",color:"gray"}]
execute if score @s adv.pres_beas matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: aura refreshes automatically",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_beas matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_beas matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"War Cry",color:"white",bold:true},{text:" — All wolves in 32 blocks get Speed II + Strength II for 30s",color:"gray"}]
execute if score @s adv.pres_beas matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Use: /trigger adv.warcry set 1 (5min cooldown)",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_beas matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
