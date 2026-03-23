# Stealth prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"dark_gray"},{text:"Stealth",color:"dark_gray",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_stea matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Shadow Cloak",color:"white",bold:true},{text:" — Become invisible while sneaking",color:"gray"}]
execute if score @s adv.pres_stea matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: just sneak to go invisible",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_stea matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_stea matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Backstab",color:"white",bold:true},{text:" — +50% melee damage while sneaking",color:"gray"}]
execute if score @s adv.pres_stea matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: attack while sneaking",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_stea matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_stea matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Perfect Stealth",color:"white",bold:true},{text:" — 10s full invisibility while still (30s cooldown)",color:"gray"}]
execute if score @s adv.pres_stea matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Double-tap sneak while standing still",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_stea matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
