# Refresh Personal Milestones — Page 1 (Staged)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p1",tag:"Ec.PMs1",score:"ach.comp_owned",t1:10,t2:25,t3:50,t4:75,t5:96,name:"Companion Collector",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p2",tag:"Ec.PMs2",score:"ach.comp_eternal",t1:1,t2:5,t3:15,t4:30,t5:50,name:"Eternal Bonds",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p3",tag:"Ec.PMs3",score:"ach.total_kills",t1:1000,t2:5000,t3:15000,t4:50000,t5:100000,name:"Mob Slayer",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p4",tag:"Ec.PMs4",score:"ach.patron_kills",t1:10,t2:50,t3:200,t4:500,t5:1000,name:"Patron Hunter",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p5",tag:"Ec.PMs5",score:"ach.quests_done",t1:10,t2:50,t3:150,t4:300,t5:500,name:"Quest Master",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p6",tag:"Ec.PMs6",score:"ach.dungeons_done",t1:5,t2:20,t3:50,t4:100,t5:200,name:"Dungeon Delver",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p7",tag:"Ec.PMs7",score:"ec.artifacts_ever",t1:25,t2:75,t3:150,t4:225,t5:290,name:"Artifact Hoarder",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p8",tag:"Ec.PMs8",score:"ach.lore_found",t1:20,t2:60,t3:100,t4:140,t5:162,name:"Lore Scholar",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p9",tag:"Ec.PMs9",score:"ach.boss_kills",t1:3,t2:10,t3:25,t4:50,t5:100,name:"Boss Vanquisher",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p10",tag:"Ec.PMs10",score:"ach.total_levels",t1:25,t2:75,t3:150,t4:250,t5:325,name:"Tree Grower",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p11",tag:"Ec.PMs11",score:"ec.dr_peak_ms",t1:2,t2:4,t3:6,t4:8,t5:99,name:"Dream Chaser",max:4}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p12",tag:"Ec.PMs12",score:"ach.structures_found",t1:5,t2:10,t3:15,t4:20,t5:22,name:"Explorer",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p13",tag:"Ec.PMs13",score:"ach.crates_opened",t1:50,t2:200,t3:500,t4:1000,t5:2500,name:"Crate Opener",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p14",tag:"Ec.PMs14",score:"ec.bounty_done",t1:5,t2:20,t3:50,t4:100,t5:200,name:"Bounty Tracker",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p15",tag:"Ec.PMs15",score:"ach.combos_triggered",t1:10,t2:50,t3:150,t4:300,t5:500,name:"Party Legend",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p16",tag:"Ec.PMs16",score:"ach.fish_caught",t1:100,t2:500,t3:2000,t4:5000,t5:15000,name:"Angler",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p17",tag:"Ec.PMs17",score:"ach.blocks_mined",t1:500,t2:5000,t3:25000,t4:100000,t5:500000,name:"Miner",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p18",tag:"Ec.PMs18",score:"ach.crops_harvested",t1:100,t2:1000,t3:5000,t4:25000,t5:100000,name:"Harvester",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p19",tag:"Ec.PMs19",score:"ach.sets_equipped",t1:3,t2:8,t3:15,t4:22,t5:27,name:"Armor Collector",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p20",tag:"Ec.PMs20",score:"ach.adj_trade",t1:50,t2:200,t3:500,t4:1500,t5:5000,name:"Merchant",max:5}

# Bulk claim prompt (only show if count changed since last display)
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
