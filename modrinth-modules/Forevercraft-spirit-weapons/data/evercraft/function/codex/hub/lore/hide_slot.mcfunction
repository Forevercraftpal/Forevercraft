# Lore GUI — Hide Set List Slot (Macro)
# Blanks out an unused slot
# Macro arg from storage: slot

$data modify entity @e[type=text_display,tag=Adv.LoreSetName$(slot),distance=..5,limit=1] text set value {"text":""}
$data modify entity @e[type=text_display,tag=Adv.LoreSetInfo$(slot),distance=..5,limit=1] text set value {"text":""}
