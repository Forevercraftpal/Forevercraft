# Journal — Refresh Scrapbook (No Pet Active)
# Sets displays to show "no companion" state

data modify entity @e[type=text_display,tag=Adv.JnScPetName,distance=..5,limit=1] text set value {text:"No companion summoned",color:"gray",italic:true}
data modify entity @e[type=text_display,tag=Adv.JnScMemCount,distance=..5,limit=1] text set value {text:"Summon a pet to view memories",color:"dark_gray",italic:true}
data modify entity @e[type=text_display,tag=Adv.JnScBonus,distance=..5,limit=1] text set value {text:"",color:"dark_gray"}
data modify entity @e[type=text_display,tag=Adv.JnScMemBtn,distance=..5,limit=1] text set value {text:"",color:"dark_gray"}
