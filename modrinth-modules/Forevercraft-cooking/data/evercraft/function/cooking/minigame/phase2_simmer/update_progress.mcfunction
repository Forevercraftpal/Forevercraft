# Update simmer progress display (macro)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
$execute as @e[type=text_display,tag=CK.SimmProgress,distance=..8,limit=1] if score @s adv.gui_session = #gui_check ec.temp run data modify entity @s text set value [{"text":"Temp: ","color":"gray"},{"text":"$(simm_temp)","color":"$(simm_tcolor)"},{"text":"  Zone: ","color":"gray"},{"text":"$(simm_pct)%","color":"yellow"}]
