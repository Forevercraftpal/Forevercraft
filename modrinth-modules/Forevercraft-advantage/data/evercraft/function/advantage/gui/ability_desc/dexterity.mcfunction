# Dexterity prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"yellow"},{text:"Dexterity",color:"yellow",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_dext matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Quick Draw",color:"white",bold:true},{text:" — +15% attack speed permanently",color:"gray"}]
execute if score @s adv.pres_dext matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: always active",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_dext matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_dext matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Dual Wield",color:"white",bold:true},{text:" — +25% attack speed when dual-wielding",color:"gray"}]
execute if score @s adv.pres_dext matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: hold items in both hands",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_dext matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_dext matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Extended Reach",color:"white",bold:true},{text:" — Permanently reach 8 blocks",color:"gray"}]
execute if score @s adv.pres_dext matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Always active",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_dext matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
