# Agility prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"aqua"},{text:"Agility",color:"aqua",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_agil matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Sprint Persist",color:"white",bold:true},{text:" — Speed lingers 3s after you stop sprinting",color:"gray"}]
execute if score @s adv.pres_agil matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: just sprint normally",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_agil matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_agil matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Double Jump",color:"white",bold:true},{text:" — Vertical boost while airborne (1s cooldown)",color:"gray"}]
execute if score @s adv.pres_agil matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Sneak while airborne to activate",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_agil matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_agil matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Dash",color:"white",bold:true},{text:" — Teleport 10 blocks forward (2s cooldown)",color:"gray"}]
execute if score @s adv.pres_agil matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Sprint + sneak to dash forward",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_agil matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
