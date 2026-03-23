# Fountain menu — Pull x10 clicked
# Runs as @s = interaction entity

# If already confirming — execute the pull
execute if entity @e[type=text_display,tag=ec.FountainBtn10,tag=ec.Confirming,distance=..20] run return run function evercraft:gacha/fountain/menu/confirm/pull10

# First click — enter confirm state
data remove entity @s interaction
function evercraft:gacha/fountain/menu/confirm/reset
execute as @e[type=text_display,tag=ec.FountainBtn10,distance=..20] run data modify entity @s text set value {text:"\u2726 Pull x10 (50 Coins) \u2726",color:"yellow",bold:true}
execute as @e[type=text_display,tag=ec.FountainBtn10,distance=..20] run tag @s add ec.Confirming
playsound minecraft:block.note_block.pling master @a[distance=..5] ~ ~ ~ 0.3 1.5
