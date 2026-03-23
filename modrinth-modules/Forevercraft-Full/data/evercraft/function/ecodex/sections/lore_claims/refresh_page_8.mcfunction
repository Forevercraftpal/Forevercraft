# Refresh Lore Claims — Page 8
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s141",tag:"Ec.LrS1",score:"ec.ls_141",t1:7,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Patrons' Covenant",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s142",tag:"Ec.LrS2",score:"ec.ls_142",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Furia Genesis",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s143",tag:"Ec.LrS3",score:"ec.ls_143",t1:8,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Sundered Portal",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s144",tag:"Ec.LrS4",score:"ec.ls_144",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Echoes in the Deep",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s145",tag:"Ec.LrS5",score:"ec.ls_145",t1:7,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Five Records",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s146",tag:"Ec.LrS6",score:"ec.ls_146",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Rift-Torn Lands",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s147",tag:"Ec.LrS7",score:"ec.ls_147",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Architect's Journal",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s148",tag:"Ec.LrS8",score:"ec.ls_148",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Songs of the Crimson",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s149",tag:"Ec.LrS9",score:"ec.ls_149",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Alloy Almanac",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s150",tag:"Ec.LrS10",score:"ec.ls_150",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Beast Bonds",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s151",tag:"Ec.LrS11",score:"ec.ls_151",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Tides of Fortune",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s152",tag:"Ec.LrS12",score:"ec.ls_152",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Tree of Stars",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s153",tag:"Ec.LrS13",score:"ec.ls_153",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Hearthfire Memories",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s154",tag:"Ec.LrS14",score:"ec.ls_154",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Wanderer's Oath",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s155",tag:"Ec.LrS15",score:"ec.ls_155",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Forge of the Titans",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s156",tag:"Ec.LrS16",score:"ec.ls_156",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Crystal Dreams",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s157",tag:"Ec.LrS17",score:"ec.ls_157",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Lucid Threshold",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s158",tag:"Ec.LrS18",score:"ec.ls_158",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Moon Cycles and Madness",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s159",tag:"Ec.LrS19",score:"ec.ls_159",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The Shattered Codex",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s160",tag:"Ec.LrS20",score:"ec.ls_160",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Keeper of the Tomb",max:1}

# Bulk claim prompt
function evercraft:claim/count_lore
execute if score @s ec.claim_lore matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 5"},"hover_event":{"action":"show_text","value":"Claim all pending lore rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
