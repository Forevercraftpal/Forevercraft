# Refresh Personal Milestones — Page 12
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s101",tag:"Ec.SMs101",score:"ach.set_bonuses",t1:100,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Set Bonus Veteran",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s102",tag:"Ec.SMs102",score:"ec.sp_duel_wins",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Duel Champion",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s103",tag:"Ec.SMs103",score:"ec.sp_revives",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Spirit Reviver",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s104",tag:"Ec.SMs104",score:"ec.sp_crits",t1:100,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Critical Marksman",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s105",tag:"Ec.SMs105",score:"ec.sp_ocean_explore",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ocean Explorer",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s106",tag:"Ec.SMs106",score:"ec.sp_deathless_hours",t1:24,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Deathless 24h",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s107",tag:"Ec.SMs107",score:"ec.sp_kill_streak",t1:50,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Kill Streak 50",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s108",tag:"Ec.SMs108",score:"ec.lb_expeditions",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Expedition",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s109",tag:"Ec.SMs109",score:"ec.lb_expeditions",t1:50,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"50 Expeditions",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s110",tag:"Ec.SMs110",score:"ec.lb_adventures",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Adventure",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s111",tag:"Ec.SMs111",score:"ec.sp_duel_wins",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Duel First Blood",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s112",tag:"Ec.SMs112",score:"ec.sp_ranged_boss",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ranged Boss Kill",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s113",tag:"Ec.SMs113",score:"ec.sp_snipe_boss",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Snipe Boss 50+",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s114",tag:"Ec.SMs114",score:"ach.food_eaten",t1:1000,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"1000 Food Eaten",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s115",tag:"Ec.SMs115",score:"ach.blocks_placed",t1:10000,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"10K Blocks Placed",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s116",tag:"Ec.SMs116",score:"ach.quest_rep",t1:500,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"500 Quest Rep",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s117",tag:"Ec.SMs117",score:"ec.sq_part",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Spirit Quest",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s118",tag:"Ec.SMs118",score:"ach.total",t1:500,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"500 Achievements",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s119",tag:"Ec.SMs119",score:"ach.surge_crates",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Surge Collector",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s120",tag:"Ec.SMs120",score:"ec.sp_castle_hoplite",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Castle Hoplite",max:1}

# Bulk claim prompt
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
