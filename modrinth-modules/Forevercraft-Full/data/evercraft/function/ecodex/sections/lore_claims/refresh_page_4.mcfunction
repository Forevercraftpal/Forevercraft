# Refresh Lore Claims — Page 4
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s61",tag:"Ec.LrS1",score:"ec.ls_61",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Star Charts",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s62",tag:"Ec.LrS2",score:"ec.ls_62",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Animal Studies",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s63",tag:"Ec.LrS3",score:"ec.ls_63",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Potion Recipes",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s64",tag:"Ec.LrS4",score:"ec.ls_64",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Enchanting Lore",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s65",tag:"Ec.LrS5",score:"ec.ls_65",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Redstone Theory",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s66",tag:"Ec.LrS6",score:"ec.ls_66",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Music Scores",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s67",tag:"Ec.LrS7",score:"ec.ls_67",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Dream Fragments",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s68",tag:"Ec.LrS8",score:"ec.ls_68",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Traveler's Maps",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s69",tag:"Ec.LrS9",score:"ec.ls_69",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Monster Field Guide",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s70",tag:"Ec.LrS10",score:"ec.ls_70",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Woodland Myths",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s71",tag:"Ec.LrS11",score:"ec.ls_71",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ocean Depths",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s72",tag:"Ec.LrS12",score:"ec.ls_72",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Mountain Echoes",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s73",tag:"Ec.LrS13",score:"ec.ls_73",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Desert Sands",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s74",tag:"Ec.LrS14",score:"ec.ls_74",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Cave Paintings",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s75",tag:"Ec.LrS15",score:"ec.ls_75",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ancient Scripts",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s76",tag:"Ec.LrS16",score:"ec.ls_76",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ghost Stories",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s77",tag:"Ec.LrS17",score:"ec.ls_77",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Warrior's Codex",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s78",tag:"Ec.LrS18",score:"ec.ls_78",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Herbalist's Guide",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s79",tag:"Ec.LrS19",score:"ec.ls_79",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Blacksmith's Secrets",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"lore",id:"s80",tag:"Ec.LrS20",score:"ec.ls_80",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Adventurer's Diary",max:1}

# Bulk claim prompt
function evercraft:claim/count_lore
execute if score @s ec.claim_lore matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 5"},"hover_event":{"action":"show_text","value":"Claim all pending lore rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
