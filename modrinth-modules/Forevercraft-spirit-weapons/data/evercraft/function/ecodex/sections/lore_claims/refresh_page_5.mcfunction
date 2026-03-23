# Refresh Lore Claims — Page 5
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s81",tag:"Ec.LrS1",score:"ec.ls_81",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Builder's Notes",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s82",tag:"Ec.LrS2",score:"ec.ls_82",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Nether Wastes Ash",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s83",tag:"Ec.LrS3",score:"ec.ls_83",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Blaze Wastes",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s84",tag:"Ec.LrS4",score:"ec.ls_84",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Crimson Spore Tales",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s85",tag:"Ec.LrS5",score:"ec.ls_85",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Crimson Canopy",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s86",tag:"Ec.LrS6",score:"ec.ls_86",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Warped Echoes",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s87",tag:"Ec.LrS7",score:"ec.ls_87",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Twisted Canopy",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s88",tag:"Ec.LrS8",score:"ec.ls_88",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Delta Stones",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s89",tag:"Ec.LrS9",score:"ec.ls_89",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Magma Fields",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s90",tag:"Ec.LrS10",score:"ec.ls_90",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Soul Whispers",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s91",tag:"Ec.LrS11",score:"ec.ls_91",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Valley of Bones",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s92",tag:"Ec.LrS12",score:"ec.ls_92",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Bastion's Bounty",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s93",tag:"Ec.LrS13",score:"ec.ls_93",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Piglin Hoard",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s94",tag:"Ec.LrS14",score:"ec.ls_94",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Fortress Archives",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s95",tag:"Ec.LrS15",score:"ec.ls_95",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Blaze Quarters",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s96",tag:"Ec.LrS16",score:"ec.ls_96",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Nether Ores",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s97",tag:"Ec.LrS17",score:"ec.ls_97",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Lava Fishing",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s98",tag:"Ec.LrS18",score:"ec.ls_98",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Piglin Trading",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s99",tag:"Ec.LrS19",score:"ec.ls_99",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Wither Cult",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s100",tag:"Ec.LrS20",score:"ec.ls_100",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Nether Flora",max:1}

# Bulk claim prompt
function evercraft:claim/count_lore
execute if score @s ec.claim_lore matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 5"},"hover_event":{"action":"show_text","value":"Claim all pending lore rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
