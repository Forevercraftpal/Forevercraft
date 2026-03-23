# Exchange: Companion Treat for 10 Dreamdust
# Runs as @s = interaction entity

# If already confirming — execute purchase
execute if entity @e[type=text_display,tag=ec.ExBuy2Label,tag=ec.Confirming,distance=..20] run return run function evercraft:gacha/fountain/menu/confirm/ex_buy2

# First click — enter confirm state
data remove entity @s interaction
function evercraft:gacha/fountain/menu/confirm/reset
execute as @e[type=text_display,tag=ec.ExBuy2Label,distance=..20] run data modify entity @s text set value [{text:"Companion Treat",color:"yellow"},{text:" — 10 Dust",color:"yellow"}]
execute as @e[type=text_display,tag=ec.ExBuy2Label,distance=..20] run tag @s add ec.Confirming
playsound minecraft:block.note_block.pling master @a[distance=..5] ~ ~ ~ 0.3 1.5
