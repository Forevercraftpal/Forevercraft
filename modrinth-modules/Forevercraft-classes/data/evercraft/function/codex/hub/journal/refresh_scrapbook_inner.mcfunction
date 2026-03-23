# Journal — Refresh Scrapbook Inner (Macro)
# Updates memory count and bonus text
$data modify entity @e[type=text_display,tag=Adv.JnScMemCount,distance=..5,limit=1] text set value {text:"$(sc_mem_count) / 25 memories",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.JnScBonus,distance=..5,limit=1] text set value {text:"Bond XP Bonus: $(sc_bonus)",color:"dark_gray"}
