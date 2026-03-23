# Refresh Personal Milestones — Page 3 (Staged)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p41",tag:"Ec.PMs41",score:"ach.adj_brew",t1:10,t2:30,t3:75,t4:150,t5:500,name:"Alchemist",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p42",tag:"Ec.PMs42",score:"ach.adj_map",t1:5,t2:15,t3:30,t4:50,t5:100,name:"Cartographer",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p43",tag:"Ec.PMs43",score:"ach.trees_unlocked",t1:3,t2:5,t3:8,t4:11,t5:13,name:"Tree Sage",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p44",tag:"Ec.PMs44",score:"ach.village_upgrades",t1:1,t2:3,t3:5,t4:8,t5:12,name:"Village Elder",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p45",tag:"Ec.PMs45",score:"ec.guild_rank",t1:2,t2:4,t3:6,t4:8,t5:10,name:"Guild Officer",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p46",tag:"Ec.PMs46",score:"ec.guild_contrib",t1:500,t2:2000,t3:5000,t4:10000,t5:25000,name:"Guild Patron",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p47",tag:"Ec.PMs47",score:"ach.cf_listened",t1:3,t2:10,t3:25,t4:50,t5:100,name:"Campfire Sage",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p48",tag:"Ec.PMs48",score:"ach.cf_recorded",t1:1,t2:3,t3:5,t4:10,t5:20,name:"Bard",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p49",tag:"Ec.PMs49",score:"ach.encounters_done",t1:3,t2:10,t3:25,t4:50,t5:100,name:"Encounter Seeker",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p50",tag:"Ec.PMs50",score:"ach.parties_formed",t1:1,t2:3,t3:5,t4:10,t5:20,name:"Party Animal",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p51",tag:"Ec.PMs51",score:"ach.night_ticks",t1:72000,t2:360000,t3:720000,t4:1800000,t5:3600000,name:"Night Stalker",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p52",tag:"Ec.PMs52",score:"ach.dungeon_no_death",t1:1,t2:3,t3:5,t4:10,t5:20,name:"Untouchable",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p53",tag:"Ec.PMs53",score:"ach.we_starfall",t1:1,t2:3,t3:5,t4:10,t5:20,name:"Storm Rider",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p54",tag:"Ec.PMs54",score:"ach.we_dreaming",t1:1,t2:3,t3:5,t4:10,t5:20,name:"Dream Walker",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p55",tag:"Ec.PMs55",score:"ach.fallen_stars",t1:1,t2:5,t3:15,t4:30,t5:50,name:"Star Collector",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p56",tag:"Ec.PMs56",score:"ach.adj_flint",t1:10,t2:50,t3:100,t4:250,t5:500,name:"Pyromaniac",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p57",tag:"Ec.PMs57",score:"ach.adj_jump",t1:10000,t2:50000,t3:100000,t4:250000,t5:500000,name:"Leap Master",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p58",tag:"Ec.PMs58",score:"ach.adj_fall",t1:100000,t2:500000,t3:2500000,t4:10000000,t5:50000000,name:"Daredevil",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p59",tag:"Ec.PMs59",score:"ach.comp_bonded",t1:1,t2:3,t3:5,t4:10,t5:20,name:"Spirit Bond",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p60",tag:"Ec.PMs60",score:"ach.crates_mining",t1:5,t2:20,t3:50,t4:100,t5:250,name:"Mining Crates",max:5}

# Bulk claim prompt (only show if count changed since last display)
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
