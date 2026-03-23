# Ability Display: Herbal Poultice (Common)
tellraw @s ""
tellraw @s {text:"══════════════════════════════",color:"white",bold:true}
tellraw @s [{text:"  "},{text:"Herbal Poultice",color:"white",bold:true}]
tellraw @s [{text:"  "},{text:"Common Healer Artifact",color:"white"}]
tellraw @s {text:"══════════════════════════════",color:"white",bold:true}
tellraw @s ""
tellraw @s [{text:"  "},{text:"Right-Click: ",color:"white"},{text:"Heal self for 2 hearts",color:"white"}]
tellraw @s [{text:"    "},{text:"Cooldown: 12s",color:"dark_gray"}]
tellraw @s ""
tellraw @s [{text:"    "},{text:"Healer's Oath: Cannot deal damage during cooldown",color:"dark_gray"}]
tellraw @s ""
tellraw @s [{text:"  "},{text:"A paste of crushed herbs and moss,",color:"gray",italic:true}]
tellraw @s [{text:"  "},{text:"applied directly to wounds.",color:"gray",italic:true}]
tellraw @s ""
tellraw @s {text:"══════════════════════════════",color:"white",bold:true}
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
