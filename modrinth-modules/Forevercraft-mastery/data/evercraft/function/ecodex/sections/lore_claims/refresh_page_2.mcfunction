# Refresh Lore Claims — Page 2
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s21",tag:"Ec.LrS1",score:"ec.ls_21",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Warden's Legacy",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s22",tag:"Ec.LrS2",score:"ec.ls_22",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"City of Silence",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s23",tag:"Ec.LrS3",score:"ec.ls_23",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Pharaoh's Hoard",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s24",tag:"Ec.LrS4",score:"ec.ls_24",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Sandswept Relics",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s25",tag:"Ec.LrS5",score:"ec.ls_25",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Frozen Hearth",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s26",tag:"Ec.LrS6",score:"ec.ls_26",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ice Laboratory",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s27",tag:"Ec.LrS7",score:"ec.ls_27",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Temple Treasures",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s28",tag:"Ec.LrS8",score:"ec.ls_28",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Jungle Traps",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s29",tag:"Ec.LrS9",score:"ec.ls_29",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Evoker's Collection",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s30",tag:"Ec.LrS10",score:"ec.ls_30",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Mansion Secrets",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s31",tag:"Ec.LrS11",score:"ec.ls_31",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Miner's Lament",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s32",tag:"Ec.LrS12",score:"ec.ls_32",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Rail Tales",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s33",tag:"Ec.LrS13",score:"ec.ls_33",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Guardian's Trove",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s34",tag:"Ec.LrS14",score:"ec.ls_34",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Prismarine Halls",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s35",tag:"Ec.LrS15",score:"ec.ls_35",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Drowned Legacy",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s36",tag:"Ec.LrS16",score:"ec.ls_36",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Coral Archives",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s37",tag:"Ec.LrS17",score:"ec.ls_37",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Raider's Cache",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s38",tag:"Ec.LrS18",score:"ec.ls_38",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Banner Tales",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s39",tag:"Ec.LrS19",score:"ec.ls_39",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Portal Fragments",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s40",tag:"Ec.LrS20",score:"ec.ls_40",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Between Worlds",max:1}

# Bulk claim prompt
function evercraft:claim/count_lore
execute if score @s ec.claim_lore matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 5"},"hover_event":{"action":"show_text","value":"Claim all pending lore rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
