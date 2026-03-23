# Confirm Pull x10 — restore color and execute
data remove entity @s interaction
execute as @e[type=text_display,tag=ec.FountainBtn10,distance=..20] run data modify entity @s text set value {text:"\u2726 Pull x10 (50 Coins) \u2726",color:"gold",bold:true}
execute as @e[type=text_display,tag=ec.FountainBtn10,distance=..20] run tag @s remove ec.Confirming
execute as @p[distance=..5] at @s run function evercraft:gacha/pull/try_pull_10_animated
