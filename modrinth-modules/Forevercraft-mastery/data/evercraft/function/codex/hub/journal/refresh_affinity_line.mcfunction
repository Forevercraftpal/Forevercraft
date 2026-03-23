# Journal — Refresh Single Affinity Line (Macro)
# Args: id (0-24), name (biome display name), score (ec.bm value)
# Determines mastery level from score and updates the Adv.JnAf{id} text_display
# Thresholds: 1800 (Visitor) / 7200 (Familiar) / 21600 (Resident) / 54000 (Warden) / 108000 (Master)

# Load score into temp scoreboard for comparison
$scoreboard players set #af_score jn.temp $(score)

# Level 5: Master (108000+ seconds = 30h)
$execute if score #af_score jn.temp matches 108000.. run return run data modify entity @e[type=text_display,tag=Adv.JnAf$(id),limit=1,sort=nearest] text set value {text:"\u2605\u2605\u2605\u2605\u2605 $(name) Master!",color:"gold",bold:true}

# Level 4: Warden (54000+ seconds = 15h)
$execute if score #af_score jn.temp matches 54000.. run return run data modify entity @e[type=text_display,tag=Adv.JnAf$(id),limit=1,sort=nearest] text set value {text:"\u2605\u2605\u2605\u2605 $(name) Warden",color:"#AB47BC"}

# Level 3: Resident (21600+ seconds = 6h)
$execute if score #af_score jn.temp matches 21600.. run return run data modify entity @e[type=text_display,tag=Adv.JnAf$(id),limit=1,sort=nearest] text set value {text:"\u2605\u2605\u2605 $(name) Resident",color:"#4FC3F7"}

# Level 2: Familiar (7200+ seconds = 2h)
$execute if score #af_score jn.temp matches 7200.. run return run data modify entity @e[type=text_display,tag=Adv.JnAf$(id),limit=1,sort=nearest] text set value {text:"\u2605\u2605 $(name) Familiar",color:"aqua"}

# Level 1: Visitor (1800+ seconds = 30min)
$execute if score #af_score jn.temp matches 1800.. run return run data modify entity @e[type=text_display,tag=Adv.JnAf$(id),limit=1,sort=nearest] text set value {text:"\u2605 $(name) Visitor",color:"white"}

# Level 0: Visited but no rank yet (1+ seconds)
$execute if score #af_score jn.temp matches 1.. run return run data modify entity @e[type=text_display,tag=Adv.JnAf$(id),limit=1,sort=nearest] text set value {text:"$(name)",color:"gray"}

# Unvisited (0 or unset) — keep dark_gray default
$data modify entity @e[type=text_display,tag=Adv.JnAf$(id),limit=1,sort=nearest] text set value {text:"$(name)",color:"dark_gray"}
