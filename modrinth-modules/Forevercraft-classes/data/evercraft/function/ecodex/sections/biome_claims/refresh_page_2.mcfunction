# Refresh Biome Claims — Page 2
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b20",tag:"Ec.BmS1",score:"ec.bm20",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Warped Forest",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b21",tag:"Ec.BmS2",score:"ec.bm21",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Basalt Deltas",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b22",tag:"Ec.BmS3",score:"ec.bm22",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Soul Sand Valley",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b23",tag:"Ec.BmS4",score:"ec.bm23",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"The End",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b24",tag:"Ec.BmS5",score:"ec.bm24",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Windswept Hills",max:5}

# Bulk claim prompt
function evercraft:claim/count_biome
execute if score @s ec.claim_biome matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"dark_aqua","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 6"},"hover_event":{"action":"show_text","value":"Claim all pending biome rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_biome"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
