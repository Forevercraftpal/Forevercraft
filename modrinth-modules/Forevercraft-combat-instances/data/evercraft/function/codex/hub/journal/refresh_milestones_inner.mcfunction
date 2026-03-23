# Journal — Refresh Milestones Inner (Macro)
# Updates milestone category counts
$data modify entity @e[type=text_display,tag=Adv.JnMs0,limit=1,sort=nearest] text set value {text:"$(ms_origins) / 10",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.JnMs1,limit=1,sort=nearest] text set value {text:"$(ms_social) / 5",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.JnMs2,limit=1,sort=nearest] text set value {text:"$(ms_guild) / 5",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.JnMs3,limit=1,sort=nearest] text set value {text:"$(ms_adventure) / 4",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.JnMs4,limit=1,sort=nearest] text set value {text:"$(ms_combat) / 4",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.JnMs5,limit=1,sort=nearest] text set value {text:"$(ms_mastery) / 4",color:"gray"}
