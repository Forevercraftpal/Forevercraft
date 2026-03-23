# Lore GUI — Render Set List Slot (Macro)
# Updates name and info text_displays for a slot
# Macro args from storage: slot, fill_name, fill_rar_color, fill_rar_label, fill_have, fill_req

# Name line: set name in rarity color
$data modify entity @e[type=text_display,tag=Adv.LoreSetName$(slot),distance=..5,limit=1] text set value {"text":"$(fill_name)","color":"$(fill_rar_color)"}

# Info line: "Rarity · X/Y pieces"
$data modify entity @e[type=text_display,tag=Adv.LoreSetInfo$(slot),distance=..5,limit=1] text set value {"text":"$(fill_rar_label) \u00b7 $(fill_have)/$(fill_req) pieces","color":"gray","italic":true}
