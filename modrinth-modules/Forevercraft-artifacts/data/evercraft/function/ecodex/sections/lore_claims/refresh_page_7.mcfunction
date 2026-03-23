# Refresh Lore Claims — Page 7
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s121",tag:"Ec.LrS1",score:"ec.ls_121",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Crystal Resonance",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s122",tag:"Ec.LrS2",score:"ec.ls_122",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Shulker Biology",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s123",tag:"Ec.LrS3",score:"ec.ls_123",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"End Stone Geology",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s124",tag:"Ec.LrS4",score:"ec.ls_124",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Elytra Legends",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s125",tag:"Ec.LrS5",score:"ec.ls_125",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Obsidian Pillars",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s126",tag:"Ec.LrS6",score:"ec.ls_126",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"End Ship Salvage",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s127",tag:"Ec.LrS7",score:"ec.ls_127",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Void Cartography",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s128",tag:"Ec.LrS8",score:"ec.ls_128",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ender Dragon Lore",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s129",tag:"Ec.LrS9",score:"ec.ls_129",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"End Poetry",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s130",tag:"Ec.LrS10",score:"ec.ls_130",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Gateway Studies",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s131",tag:"Ec.LrS11",score:"ec.ls_131",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"End Archaeology",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s132",tag:"Ec.LrS12",score:"ec.ls_132",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Void Survival Kit",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s133",tag:"Ec.LrS13",score:"ec.ls_133",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Purpur Architecture",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s134",tag:"Ec.LrS14",score:"ec.ls_134",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"End Lighting",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s135",tag:"Ec.LrS15",score:"ec.ls_135",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ender Chest Secrets",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s136",tag:"Ec.LrS16",score:"ec.ls_136",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"End Fauna",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s137",tag:"Ec.LrS17",score:"ec.ls_137",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Void Alchemy",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s138",tag:"Ec.LrS18",score:"ec.ls_138",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"End Construction",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s139",tag:"Ec.LrS19",score:"ec.ls_139",t1:8,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"The First Dreamers",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s140",tag:"Ec.LrS20",score:"ec.ls_140",t1:7,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Whispers of the Weave",max:1}

# Bulk claim prompt
function evercraft:claim/count_lore
execute if score @s ec.claim_lore matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 5"},"hover_event":{"action":"show_text","value":"Claim all pending lore rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
