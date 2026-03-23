# Update chop progress display (macro)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
$execute as @e[type=text_display,tag=CK.ChopProgress,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"Chops: ","color":"gray"},{"text":"$(chop_done)","color":"yellow"},{"text":"/","color":"gray"},{"text":"$(chop_need)","color":"yellow"},{"text":"  Quality: ","color":"gray"},{"text":"$(chop_qual)","color":"gold"}]
