# Refresh Lore Claims — Page 9
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s161",tag:"Ec.LrS1",score:"ec.ls_161",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Harmonization",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s162",tag:"Ec.LrS2",score:"ec.ls_162",t1:8,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Prophecy of Convergence",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s163",tag:"Ec.LrS3",score:"ec.ls_163",t1:4,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Echoes of Convergence",max:1}

# Bulk claim prompt
function evercraft:claim/count_lore
execute if score @s ec.claim_lore matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 5"},"hover_event":{"action":"show_text","value":"Claim all pending lore rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
