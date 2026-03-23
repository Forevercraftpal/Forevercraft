# Lore GUI — Render Slot Complete (Macro)
# Overwrites the info line with COMPLETE indicator
# Macro arg from storage: slot

$data modify entity @e[type=text_display,tag=Adv.LoreSetInfo$(slot),distance=..5,limit=1] text set value {"text":"\u2714 COMPLETE","color":"green","bold":true}
