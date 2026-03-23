# Ability Display: Fang of Frost (Rare Rogue Dagger)
tellraw @s ""
tellraw @s {text:"══════════════════════════════════",color:"blue",bold:true}
tellraw @s [{text:"  "},{text:"Fang of Frost",color:"blue",bold:true}]
tellraw @s [{text:"  "},{text:"Rare Rogue Dagger",color:"white"}]
tellraw @s {text:"══════════════════════════════════",color:"blue",bold:true}
tellraw @s ""
tellraw @s [{text:"  "},{text:"Auto-Swing: ",color:"white"},{text:"Every 0.9s",color:"yellow"}]
tellraw @s [{text:"  "},{text:"Damage: ",color:"white"},{text:"4 per swing, 1 target",color:"red"}]
tellraw @s [{text:"  "},{text:"Dual Wield: ",color:"white"},{text:"Every 0.45s",color:"gold"}]
tellraw @s [{text:"  "},{text:"Bonus: ",color:"white"},{text:"Freeze",color:"aqua"},{text:" — Slowness III (2s) on hit",color:"gray"}]
tellraw @s ""
tellraw @s [{text:"  "},{text:"Hold mainhand to auto-attack nearby enemies",color:"gray",italic:true}]
tellraw @s {text:"══════════════════════════════════",color:"blue",bold:true}
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
