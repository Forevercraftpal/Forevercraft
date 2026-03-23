# Vitality prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"red"},{text:"Vitality",color:"red",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_vita matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Vital Regen",color:"white",bold:true},{text:" — Passive regeneration when below 50% HP",color:"gray"}]
execute if score @s adv.pres_vita matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: triggers when your health drops below half",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_vita matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_vita matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Death Save",color:"white",bold:true},{text:" — Auto-heal when critically low HP (5min cooldown)",color:"gray"}]
execute if score @s adv.pres_vita matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Triggers automatically below 2 hearts",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_vita matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_vita matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Iron Will",color:"white",bold:true},{text:" — Permanent Resistance I",color:"gray"}]
execute if score @s adv.pres_vita matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Always active",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_vita matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
