# Artifact Collection — Refresh Tiers Inner (Macro)
# Injects discovery counts into tier description displays
$data modify entity @e[type=text_display,tag=Adv.ArtTrDesc0,limit=1,sort=nearest] text set value {text:"$(common_count) / 23 discovered",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.ArtTrDesc1,limit=1,sort=nearest] text set value {text:"$(uncommon_count) / 23 discovered",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.ArtTrDesc2,limit=1,sort=nearest] text set value {text:"$(rare_count) / 31 discovered",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.ArtTrDesc3,limit=1,sort=nearest] text set value {text:"$(ornate_count) / 109 discovered",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.ArtTrDesc4,limit=1,sort=nearest] text set value {text:"$(exquisite_count) / 60 discovered",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.ArtTrDesc5,limit=1,sort=nearest] text set value {text:"$(mythical_count) / 77 discovered",color:"gray"}
$data modify entity @e[type=text_display,tag=Adv.ArtConstBtnDesc,limit=1,sort=nearest] text set value {text:"$(const_count) / 10 complete",color:"gray"}
