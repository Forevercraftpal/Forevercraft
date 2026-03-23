# Refresh Lore Claims — Page 1
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s1",tag:"Ec.LrS1",score:"ec.ls_1",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Flowers of the Plains",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s2",tag:"Ec.LrS2",score:"ec.ls_2",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Forest Whispers",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s3",tag:"Ec.LrS3",score:"ec.ls_3",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Petal Cascade",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s4",tag:"Ec.LrS4",score:"ec.ls_4",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Darkwood Shadows",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s5",tag:"Ec.LrS5",score:"ec.ls_5",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Frostpine Tales",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s6",tag:"Ec.LrS6",score:"ec.ls_6",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Summit Stones",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s7",tag:"Ec.LrS7",score:"ec.ls_7",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Jungle Relics",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s8",tag:"Ec.LrS8",score:"ec.ls_8",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Desert Mirages",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s9",tag:"Ec.LrS9",score:"ec.ls_9",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Savanna Dusk",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s10",tag:"Ec.LrS10",score:"ec.ls_10",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Tidal Treasures",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s11",tag:"Ec.LrS11",score:"ec.ls_11",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"River Stones",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s12",tag:"Ec.LrS12",score:"ec.ls_12",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Murky Keepsakes",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s13",tag:"Ec.LrS13",score:"ec.ls_13",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Mycelium Mysteries",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s14",tag:"Ec.LrS14",score:"ec.ls_14",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Frozen Memories",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s15",tag:"Ec.LrS15",score:"ec.ls_15",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Terracotta Chronicles",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s16",tag:"Ec.LrS16",score:"ec.ls_16",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Lush Undergrowth",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s17",tag:"Ec.LrS17",score:"ec.ls_17",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Stalactite Songs",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s18",tag:"Ec.LrS18",score:"ec.ls_18",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Sculk Whispers",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s19",tag:"Ec.LrS19",score:"ec.ls_19",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Windswept Relics",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s20",tag:"Ec.LrS20",score:"ec.ls_20",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Depths Below",max:1}

# Bulk claim prompt
function evercraft:claim/count_lore
execute if score @s ec.claim_lore matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 5"},"hover_event":{"action":"show_text","value":"Claim all pending lore rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
