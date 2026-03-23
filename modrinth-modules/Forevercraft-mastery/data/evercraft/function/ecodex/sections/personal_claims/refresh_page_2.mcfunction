# Refresh Personal Milestones — Page 2 (Staged)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p21",tag:"Ec.PMs21",score:"ach.biomes_visited",t1:5,t2:10,t3:15,t4:20,t5:24,name:"Biome Seeker",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p22",tag:"Ec.PMs22",score:"ach.housing_tier",t1:1,t2:2,t3:3,t4:4,t5:5,name:"Homesteader",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p23",tag:"Ec.PMs23",score:"ic.record",t1:10,t2:25,t3:50,t4:75,t5:100,name:"Tower Climber",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p24",tag:"Ec.PMs24",score:"ach.runes_forged",t1:5,t2:15,t3:30,t4:60,t5:100,name:"Runesmith",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p25",tag:"Ec.PMs25",score:"ach.transmutes_done",t1:5,t2:25,t3:50,t4:100,t5:250,name:"Transmuter",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p26",tag:"Ec.PMs26",score:"ach.forages_done",t1:10,t2:50,t3:100,t4:250,t5:500,name:"Forager",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p27",tag:"Ec.PMs27",score:"ach.prospects_done",t1:10,t2:50,t3:100,t4:250,t5:500,name:"Prospector",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p28",tag:"Ec.PMs28",score:"ach.satchel_artifacts",t1:3,t2:10,t3:20,t4:35,t5:50,name:"Satchel Keeper",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p29",tag:"Ec.PMs29",score:"ach.elytra_merges",t1:1,t2:3,t3:5,t4:8,t5:12,name:"Sky Forger",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p30",tag:"Ec.PMs30",score:"ach.journal_entries",t1:3,t2:10,t3:25,t4:50,t5:100,name:"Chronicler",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p31",tag:"Ec.PMs31",score:"ach.fish_treasure",t1:5,t2:20,t3:50,t4:100,t5:250,name:"Treasure Fisher",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p32",tag:"Ec.PMs32",score:"ach.adj_play",t1:72000,t2:720000,t3:3600000,t4:7200000,t5:36000000,name:"Veteran",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p33",tag:"Ec.PMs33",score:"ach.adj_walk",t1:100000,t2:1000000,t3:5000000,t4:25000000,t5:100000000,name:"Wanderlust",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p34",tag:"Ec.PMs34",score:"ach.food_eaten",t1:50,t2:200,t3:500,t4:1500,t5:5000,name:"Gourmand",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p35",tag:"Ec.PMs35",score:"ach.blocks_placed",t1:500,t2:5000,t3:25000,t4:100000,t5:500000,name:"Builder",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p36",tag:"Ec.PMs36",score:"ach.adj_sprint",t1:100000,t2:1000000,t3:5000000,t4:25000000,t5:100000000,name:"Sprinter",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p37",tag:"Ec.PMs37",score:"ach.adj_swim",t1:50000,t2:500000,t3:2500000,t4:10000000,t5:50000000,name:"Deep Diver",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p38",tag:"Ec.PMs38",score:"ach.adj_sleep",t1:5,t2:15,t3:30,t4:50,t5:100,name:"Well Rested",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p39",tag:"Ec.PMs39",score:"ach.adj_chest",t1:50,t2:200,t3:500,t4:1500,t5:5000,name:"Looter",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p40",tag:"Ec.PMs40",score:"ach.adj_ench",t1:10,t2:30,t3:75,t4:150,t5:500,name:"Enchanter",max:5}

# Bulk claim prompt (only show if count changed since last display)
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
