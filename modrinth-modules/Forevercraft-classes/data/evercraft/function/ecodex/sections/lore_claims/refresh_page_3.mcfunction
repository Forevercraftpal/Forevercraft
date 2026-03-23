# Refresh Lore Claims — Page 3
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s41",tag:"Ec.LrS1",score:"ec.ls_41",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Captain's Log",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s42",tag:"Ec.LrS2",score:"ec.ls_42",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Barnacle Bounty",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s43",tag:"Ec.LrS3",score:"ec.ls_43",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ender Archives",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s44",tag:"Ec.LrS4",score:"ec.ls_44",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Dungeon Depths",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s45",tag:"Ec.LrS5",score:"ec.ls_45",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Buried History",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s46",tag:"Ec.LrS6",score:"ec.ls_46",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Archaeologist's Notes",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s47",tag:"Ec.LrS7",score:"ec.ls_47",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Trial Trophies",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s48",tag:"Ec.LrS8",score:"ec.ls_48",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Chamber Keys",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s49",tag:"Ec.LrS9",score:"ec.ls_49",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Village Chronicles",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s50",tag:"Ec.LrS10",score:"ec.ls_50",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Hearth and Home",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s51",tag:"Ec.LrS11",score:"ec.ls_51",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Mob Femurs",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s52",tag:"Ec.LrS12",score:"ec.ls_52",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Mob Feet",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s53",tag:"Ec.LrS13",score:"ec.ls_53",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Mob Eggs",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s54",tag:"Ec.LrS14",score:"ec.ls_54",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Hostile Weapons",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s55",tag:"Ec.LrS15",score:"ec.ls_55",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Flower Pressing",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s56",tag:"Ec.LrS16",score:"ec.ls_56",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Mining Logs",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s57",tag:"Ec.LrS17",score:"ec.ls_57",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Fishing Tales",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s58",tag:"Ec.LrS18",score:"ec.ls_58",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Cooking Notes",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s59",tag:"Ec.LrS19",score:"ec.ls_59",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Farming Almanac",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s60",tag:"Ec.LrS20",score:"ec.ls_60",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Weather Journals",max:1}

# Bulk claim prompt
function evercraft:claim/count_lore
execute if score @s ec.claim_lore matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 5"},"hover_event":{"action":"show_text","value":"Claim all pending lore rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
