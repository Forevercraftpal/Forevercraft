# Refresh Personal Milestones — Page 7 (Staged)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p61",tag:"Ec.PMs61",score:"ck.m_combat",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Combat Cuisine",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p62",tag:"Ec.PMs62",score:"ck.m_mining",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Mining Meals",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p63",tag:"Ec.PMs63",score:"ck.m_fortune",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Fortune Foods",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p64",tag:"Ec.PMs64",score:"ck.m_wayfarer",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Wayfarer Fare",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p65",tag:"Ec.PMs65",score:"ck.m_delicacy",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Delicacies",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p66",tag:"Ec.PMs66",score:"ck.m_seasonal",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Seasonal Cooking",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p67",tag:"Ec.PMs67",score:"ck.m_treats",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Sweet Treats",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p68",tag:"Ec.PMs68",score:"ck.m_ration",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Laborer Rations",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p69",tag:"Ec.PMs69",score:"ck.m_feast",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Feast Platters",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p70",tag:"Ec.PMs70",score:"ck.m_preserve",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Preservation",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p71",tag:"Ec.PMs71",score:"ck.m_spirit",t1:10,t2:25,t3:50,t4:100,t5:200,name:"Spirit Cuisine",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p72",tag:"Ec.PMs72",score:"ec.sp_tier",t1:3,t2:5,t3:8,t4:12,t5:15,name:"Spirit Tier",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p73",tag:"Ec.PMs73",score:"ec.sp_mastery",t1:500,t2:2000,t3:5000,t4:10000,t5:25000,name:"Spirit Mastery",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p74",tag:"Ec.PMs74",score:"ec.sp_kills",t1:100,t2:500,t3:2000,t4:5000,t5:15000,name:"Spirit Kills",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p75",tag:"Ec.PMs75",score:"ec.sp_stealth_kills",t1:10,t2:50,t3:100,t4:250,t5:500,name:"Stealth Operative",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p76",tag:"Ec.PMs76",score:"ec.sp_range_kills",t1:25,t2:100,t3:250,t4:500,t5:1000,name:"Marksman",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p77",tag:"Ec.PMs77",score:"ec.sp_solo_bosses",t1:1,t2:3,t3:5,t4:10,t5:14,name:"Solo Warrior",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p78",tag:"Ec.PMs78",score:"ec.sp_snipe_kills",t1:10,t2:50,t3:100,t4:250,t5:500,name:"Sniper",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p79",tag:"Ec.PMs79",score:"ec.sp_whirl_kills",t1:25,t2:100,t3:250,t4:500,t5:1000,name:"Whirlwind",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p80",tag:"Ec.PMs80",score:"ec.sp_damage_blocked",t1:1000,t2:5000,t3:25000,t4:100000,t5:500000,name:"Iron Wall",max:5}

# Bulk claim prompt
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
