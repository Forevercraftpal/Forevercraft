# Refresh Personal Milestones — Page 5 (One-Time)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s21",tag:"Ec.SMs21",score:"ach.crops_harvested",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Green Thumb",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s22",tag:"Ec.SMs22",score:"ach.housing_tier",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Home Sweet Home",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s23",tag:"Ec.SMs23",score:"ec.guild_rank",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Guild Recruit",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s24",tag:"Ec.SMs24",score:"ec.tt_completed",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Trial Initiate",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s25",tag:"Ec.SMs25",score:"ach.cf_listened",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Gather Round",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s26",tag:"Ec.SMs26",score:"ach.encounters_done",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Random Encounter",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s27",tag:"Ec.SMs27",score:"ach.parties_formed",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Party Starter",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s28",tag:"Ec.SMs28",score:"ach.satchel_artifacts",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Pack Rat",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s29",tag:"Ec.SMs29",score:"ach.journal_entries",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Dear Diary",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s30",tag:"Ec.SMs30",score:"ach.biomes_visited",t1:3,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"New Horizons",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s31",tag:"Ec.SMs31",score:"ach.sets_equipped",t1:27,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Full Arsenal",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s32",tag:"Ec.SMs32",score:"ach.comp_owned",t1:96,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Companion Master",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s33",tag:"Ec.SMs33",score:"ach.lore_found",t1:162,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Complete Lore",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s34",tag:"Ec.SMs34",score:"ach.biomes_visited",t1:24,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"World Mapped",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s35",tag:"Ec.SMs35",score:"ach.patron_kills",t1:500,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Patron Destroyer",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s36",tag:"Ec.SMs36",score:"ach.fallen_stars",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Star Touched",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s37",tag:"Ec.SMs37",score:"ec.dr_peak_ms",t1:8,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Dream Ascended",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s38",tag:"Ec.SMs38",score:"ach.combos_triggered",t1:200,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Combo King",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s39",tag:"Ec.SMs39",score:"ach.night_ticks",t1:1800000,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Night Master",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s40",tag:"Ec.SMs40",score:"ach.blocks_mined",t1:1000000,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Mega Miner",max:1}

# Bulk claim prompt (only show if count changed since last display)
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
