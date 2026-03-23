# Confirm Pull x1 — restore color and execute
data remove entity @s interaction
execute as @e[type=text_display,tag=ec.FountainBtn1,distance=..20] run data modify entity @s text set value {text:"\u2726 Pull x1 (5 Coins) \u2726",color:"light_purple",bold:true}
execute as @e[type=text_display,tag=ec.FountainBtn1,distance=..20] run tag @s remove ec.Confirming
execute as @p[distance=..5] at @s run function evercraft:gacha/pull/try_pull_animated
