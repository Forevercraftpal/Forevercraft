# Reset any currently confirming button back to its original color
# Called before entering a new confirm state

# Main menu buttons
execute as @e[type=text_display,tag=ec.FountainBtn1,tag=ec.Confirming,distance=..20] run data modify entity @s text set value {text:"\u2726 Pull x1 (5 Coins) \u2726",color:"light_purple",bold:true}
execute as @e[type=text_display,tag=ec.FountainBtn1,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming

execute as @e[type=text_display,tag=ec.FountainBtn10,tag=ec.Confirming,distance=..20] run data modify entity @s text set value {text:"\u2726 Pull x10 (50 Coins) \u2726",color:"gold",bold:true}
execute as @e[type=text_display,tag=ec.FountainBtn10,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming

# Exchange buttons
execute as @e[type=text_display,tag=ec.ExBuy1Label,tag=ec.Confirming,distance=..20] run data modify entity @s text set value [{text:"1 Forever Coin",color:"gold"},{text:" — 3 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy1Label,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming

execute as @e[type=text_display,tag=ec.ExBuy2Label,tag=ec.Confirming,distance=..20] run data modify entity @s text set value [{text:"Companion Treat",color:"gold"},{text:" — 10 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy2Label,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming

execute as @e[type=text_display,tag=ec.ExBuy3Label,tag=ec.Confirming,distance=..20] run data modify entity @s text set value [{text:"Awakening Stone",color:"light_purple"},{text:" — 15 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy3Label,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming

execute as @e[type=text_display,tag=ec.ExBuy4Label,tag=ec.Confirming,distance=..20] run data modify entity @s text set value [{text:"Tree Token",color:"green"},{text:" — 30 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy4Label,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming

execute as @e[type=text_display,tag=ec.ExBuy5Label,tag=ec.Confirming,distance=..20] run data modify entity @s text set value [{text:"Random Particle",color:"#E0B0FF"},{text:" — 100 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy5Label,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming

execute as @e[type=text_display,tag=ec.ExBuy6Label,tag=ec.Confirming,distance=..20] run data modify entity @s text set value [{text:"Random Title",color:"#E0B0FF"},{text:" — 100 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy6Label,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming

execute as @e[type=text_display,tag=ec.ExBuy7Label,tag=ec.Confirming,distance=..20] run data modify entity @s text set value [{text:"Exquisite Pull",color:"light_purple",bold:true},{text:" — 200 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy7Label,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming

execute as @e[type=text_display,tag=ec.ExBuy8Label,tag=ec.Confirming,distance=..20] run data modify entity @s text set value [{text:"Mythical Pull",color:"gold",bold:true},{text:" — 500 Dust",color:"gray"}]
execute as @e[type=text_display,tag=ec.ExBuy8Label,tag=ec.Confirming,distance=..20] run tag @s remove ec.Confirming
