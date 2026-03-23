# Taskmaster prestige ability descriptions
tellraw @s {text:""}
tellraw @s [{text:"  ✦ ",color:"dark_purple"},{text:"Taskmaster",color:"dark_purple",bold:true},{text:" — Prestige Abilities",color:"gray"}]
tellraw @s {text:"  ─────────────────────",color:"dark_gray"}
execute if score @s adv.pres_task matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"Quest Mastery",color:"white",bold:true},{text:" — Quest rewards +25%",color:"gray"}]
execute if score @s adv.pres_task matches 1.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: bonus applied on quest completion",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_task matches 1.. run tellraw @s [{text:"  P1 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_task matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"Renowned",color:"white",bold:true},{text:" — Permanent +1 Dream Rate",color:"gray"}]
execute if score @s adv.pres_task matches 2.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: always active",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_task matches 2.. run tellraw @s [{text:"  P2 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
execute if score @s adv.pres_task matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"Veteran's Instinct",color:"white",bold:true},{text:" — +2 Dream Rate + Haste II & Speed I on quest complete",color:"gray"}]
execute if score @s adv.pres_task matches 3.. run tellraw @s [{text:"         ► ",color:"dark_gray"},{text:"Passive: Dream Rate always active, buffs on completion",color:"dark_gray",italic:true}]
execute unless score @s adv.pres_task matches 3.. run tellraw @s [{text:"  P3 ",color:"gold"},{text:"???",obfuscated:true,color:"dark_gray"},{text:" — Prestige to unlock",color:"dark_gray"}]
tellraw @s {text:""}
