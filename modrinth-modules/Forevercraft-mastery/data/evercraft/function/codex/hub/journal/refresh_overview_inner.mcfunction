# Journal — Refresh Overview Inner (Macro)
# Updates overview description text with actual counts
$data modify entity @e[type=text_display,tag=Adv.JnOvDesc0,limit=1,sort=nearest] text set value {text:"$(biome_count) / 25 discovered",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.JnOvDesc1,limit=1,sort=nearest] text set value {text:"$(struct_count) / 18 discovered",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.JnOvDesc2,limit=1,sort=nearest] text set value {text:"$(village_count) discovered",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.JnOvDesc3,limit=1,sort=nearest] text set value {text:"$(secret_count) / 5 discovered",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.JnOvDesc4,limit=1,sort=nearest] text set value {text:"$(region_count) / 4 complete",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.JnOvDesc5,limit=1,sort=nearest] text set value {text:"$(affinity_count) / 25 attuned",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.JnOvDesc6,limit=1,sort=nearest] text set value {text:"$(milestone_count) / 32 complete",color:"gray",italic:true}
$data modify entity @e[type=text_display,tag=Adv.JnOvDesc7,limit=1,sort=nearest] text set value {text:"$(memory_count) / 25 memories",color:"gray",italic:true}
