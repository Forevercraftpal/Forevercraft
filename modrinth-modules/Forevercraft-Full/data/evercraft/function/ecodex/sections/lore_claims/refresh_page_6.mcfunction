# Refresh Lore Claims — Page 6
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s101",tag:"Ec.LrS1",score:"ec.ls_101",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ghast Journals",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s102",tag:"Ec.LrS2",score:"ec.ls_102",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Nether Masonry",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s103",tag:"Ec.LrS3",score:"ec.ls_103",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Strider Tales",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s104",tag:"Ec.LrS4",score:"ec.ls_104",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Gold Rush",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s105",tag:"Ec.LrS5",score:"ec.ls_105",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Nether Survival",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s106",tag:"Ec.LrS6",score:"ec.ls_106",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Blaze Academy",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s107",tag:"Ec.LrS7",score:"ec.ls_107",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Crimson Cuisine",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s108",tag:"Ec.LrS8",score:"ec.ls_108",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Dimension Rifts",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s109",tag:"Ec.LrS9",score:"ec.ls_109",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ancient Nether",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s110",tag:"Ec.LrS10",score:"ec.ls_110",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Skull Collection",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s111",tag:"Ec.LrS11",score:"ec.ls_111",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Nether Soundscapes",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s112",tag:"Ec.LrS12",score:"ec.ls_112",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Void Stones",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s113",tag:"Ec.LrS13",score:"ec.ls_113",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"End City Treasures",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s114",tag:"Ec.LrS14",score:"ec.ls_114",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Shulker Archives",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s115",tag:"Ec.LrS15",score:"ec.ls_115",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Dragon Relics",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s116",tag:"Ec.LrS16",score:"ec.ls_116",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Chorus Gardens",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s117",tag:"Ec.LrS17",score:"ec.ls_117",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ender Pearl Studies",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s118",tag:"Ec.LrS18",score:"ec.ls_118",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Void Walker's Log",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s119",tag:"Ec.LrS19",score:"ec.ls_119",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Enderman Studies",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s120",tag:"Ec.LrS20",score:"ec.ls_120",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"End Island Survey",max:1}

# Bulk claim prompt
function evercraft:claim/count_lore
execute if score @s ec.claim_lore matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 5"},"hover_event":{"action":"show_text","value":"Claim all pending lore rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
