# Refresh Personal Milestones — Page 8 (Staged)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p81",tag:"Ec.PMs81",score:"ach.crates_fishing",t1:5,t2:20,t3:50,t4:100,t5:250,name:"Fishing Crates",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p82",tag:"Ec.PMs82",score:"ach.crates_harvest",t1:5,t2:20,t3:50,t4:100,t5:250,name:"Harvest Crates",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p83",tag:"Ec.PMs83",score:"ach.crates_structure",t1:5,t2:20,t3:50,t4:100,t5:250,name:"Structure Crates",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p84",tag:"Ec.PMs84",score:"ach.crates_mob",t1:5,t2:20,t3:50,t4:100,t5:250,name:"Mob Crates",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p85",tag:"Ec.PMs85",score:"ach.comp_devoted",t1:1,t2:5,t3:15,t4:30,t5:50,name:"Devoted Collector",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p86",tag:"Ec.PMs86",score:"ach.comp_soulbound",t1:1,t2:3,t3:10,t4:20,t5:40,name:"Soulbound Collector",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p87",tag:"Ec.PMs87",score:"ach.comp_feeds",t1:50,t2:200,t3:500,t4:1500,t5:5000,name:"Pet Feeder",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p88",tag:"Ec.PMs88",score:"ach.comp_interacts",t1:50,t2:200,t3:500,t4:1500,t5:5000,name:"Companion Interactor",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p89",tag:"Ec.PMs89",score:"ach.comp_abilities",t1:25,t2:100,t3:250,t4:500,t5:1000,name:"Ability Master",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p90",tag:"Ec.PMs90",score:"ach.we_abyssal",t1:1,t2:3,t3:5,t4:10,t5:20,name:"Abyssal Survivor",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p91",tag:"Ec.PMs91",score:"ach.we_aurora",t1:1,t2:3,t3:5,t4:10,t5:20,name:"Aurora Chaser",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p92",tag:"Ec.PMs92",score:"ach.we_rift_echo",t1:1,t2:3,t3:5,t4:10,t5:20,name:"Rift Walker",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p93",tag:"Ec.PMs93",score:"ach.rift_kills_event",t1:10,t2:50,t3:100,t4:250,t5:500,name:"Rift Slayer",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p94",tag:"Ec.PMs94",score:"ach.meteor_ores_event",t1:5,t2:20,t3:50,t4:100,t5:250,name:"Meteor Miner",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p95",tag:"Ec.PMs95",score:"ach.moons_seen",t1:8,t2:32,t3:100,t4:250,t5:500,name:"Moon Watcher",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p96",tag:"Ec.PMs96",score:"ach.cal_meteor",t1:3,t2:10,t3:25,t4:50,t5:100,name:"Calendar Expert",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p97",tag:"Ec.PMs97",score:"ach.quest_xp",t1:500,t2:2000,t3:5000,t4:15000,t5:50000,name:"Quest XP",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p98",tag:"Ec.PMs98",score:"ach.villages_quested",t1:3,t2:5,t3:8,t4:12,t5:15,name:"Village Quester",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p99",tag:"Ec.PMs99",score:"ach.bnt_kills",t1:10,t2:50,t3:150,t4:300,t5:500,name:"Bounty Hunter",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p100",tag:"Ec.PMs100",score:"ec.dng_attempts",t1:10,t2:30,t3:75,t4:150,t5:300,name:"Dungeon Veteran",max:5}

# Bulk claim prompt
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
