# Trial Anvil — Set progress text (macro)
# Args: $(best), $(next) from storage evercraft:trials
$execute as @e[type=text_display,tag=TT.TierInfo,distance=..7,limit=1] run data modify entity @s text set value [{"text":"Completed: ","color":"gray"},{"text":"$(best)/10","color":"gold"},{"text":" | Next: ","color":"gray"},{"text":"Tier $(next)","color":"yellow"}]
