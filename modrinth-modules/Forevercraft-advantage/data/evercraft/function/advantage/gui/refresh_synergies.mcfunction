# Refresh Page 3 synergy displays with current lock/active status
# Now uses 3-column layout: name (left), requirements (center), status (right)
# Only the name and status entities are updated; requirements are static
# Run as the player with menu open

# Battle Trance (Evasion+Victorian >= 15 each)
execute if score @s adv.syn_combat matches 0 run data modify entity @e[type=text_display,tag=Adv.Syn0,limit=1,sort=nearest] text set value {text:"Battle Trance",color:"red"}
execute if score @s adv.syn_combat matches 0 run data modify entity @e[type=text_display,tag=Adv.Syn0Status,limit=1,sort=nearest] text set value {text:"LOCKED",color:"dark_gray",bold:true}
execute if score @s adv.syn_combat matches 1 run data modify entity @e[type=text_display,tag=Adv.Syn0,limit=1,sort=nearest] text set value {text:"Battle Trance",color:"red"}
execute if score @s adv.syn_combat matches 1 run data modify entity @e[type=text_display,tag=Adv.Syn0Status,limit=1,sort=nearest] text set value {text:"ACTIVE",color:"green",bold:true}

# Resource Master (Fishing+Mining+Gathering >= 15 each)
execute if score @s adv.syn_gather matches 0 run data modify entity @e[type=text_display,tag=Adv.Syn1,limit=1,sort=nearest] text set value {text:"Resource Master",color:"gold"}
execute if score @s adv.syn_gather matches 0 run data modify entity @e[type=text_display,tag=Adv.Syn1Status,limit=1,sort=nearest] text set value {text:"LOCKED",color:"dark_gray",bold:true}
execute if score @s adv.syn_gather matches 1 run data modify entity @e[type=text_display,tag=Adv.Syn1,limit=1,sort=nearest] text set value {text:"Resource Master",color:"gold"}
execute if score @s adv.syn_gather matches 1 run data modify entity @e[type=text_display,tag=Adv.Syn1Status,limit=1,sort=nearest] text set value {text:"ACTIVE",color:"green",bold:true}

# Shadow Step (Agility+Stealth >= 20 each)
execute if score @s adv.syn_utility matches 0 run data modify entity @e[type=text_display,tag=Adv.Syn2,limit=1,sort=nearest] text set value {text:"Shadow Step",color:"dark_gray"}
execute if score @s adv.syn_utility matches 0 run data modify entity @e[type=text_display,tag=Adv.Syn2Status,limit=1,sort=nearest] text set value {text:"LOCKED",color:"dark_gray",bold:true}
execute if score @s adv.syn_utility matches 1 run data modify entity @e[type=text_display,tag=Adv.Syn2,limit=1,sort=nearest] text set value {text:"Shadow Step",color:"dark_gray"}
execute if score @s adv.syn_utility matches 1 run data modify entity @e[type=text_display,tag=Adv.Syn2Status,limit=1,sort=nearest] text set value {text:"ACTIVE",color:"green",bold:true}

# Pack Leader (Taskmaster+Beastmaster >= 20 each)
execute if score @s adv.syn_support matches 0 run data modify entity @e[type=text_display,tag=Adv.Syn3,limit=1,sort=nearest] text set value {text:"Pack Leader",color:"dark_purple"}
execute if score @s adv.syn_support matches 0 run data modify entity @e[type=text_display,tag=Adv.Syn3Status,limit=1,sort=nearest] text set value {text:"LOCKED",color:"dark_gray",bold:true}
execute if score @s adv.syn_support matches 1 run data modify entity @e[type=text_display,tag=Adv.Syn3,limit=1,sort=nearest] text set value {text:"Pack Leader",color:"dark_purple"}
execute if score @s adv.syn_support matches 1 run data modify entity @e[type=text_display,tag=Adv.Syn3Status,limit=1,sort=nearest] text set value {text:"ACTIVE",color:"green",bold:true}
