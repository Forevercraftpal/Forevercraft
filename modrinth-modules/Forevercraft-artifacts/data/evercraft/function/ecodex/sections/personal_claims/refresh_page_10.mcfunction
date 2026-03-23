# Refresh Personal Milestones — Page 10
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s61",tag:"Ec.SMs61",score:"ec.sp_bk8",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Leviathan",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s62",tag:"Ec.SMs62",score:"ec.sp_bk9",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Eternal Pharaoh",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s63",tag:"Ec.SMs63",score:"ec.sp_bk10",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Venomweaver",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s64",tag:"Ec.SMs64",score:"ec.sp_bk11",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Deepcrawler",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s65",tag:"Ec.SMs65",score:"ec.sp_bk12",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Mossheart Warden",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s66",tag:"Ec.SMs66",score:"ec.sp_bk13",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Crimson Bulwark",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s67",tag:"Ec.SMs67",score:"ach.we_abyssal",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Abyssal Tremor",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s68",tag:"Ec.SMs68",score:"ach.we_aurora",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Aurora Bloom",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s69",tag:"Ec.SMs69",score:"ach.we_rift_echo",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Rift Echo",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s70",tag:"Ec.SMs70",score:"ach.recipes_learned",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Recipe Learned",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s71",tag:"Ec.SMs71",score:"ach.recipes_learned",t1:42,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Recipe Completionist",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s72",tag:"Ec.SMs72",score:"ach.crates_fishing",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Fishing Crate",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s73",tag:"Ec.SMs73",score:"ach.crates_harvest",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Harvest Crate",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s74",tag:"Ec.SMs74",score:"ach.crates_structure",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Structure Crate",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s75",tag:"Ec.SMs75",score:"ach.crates_mob",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Mob Crate",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s76",tag:"Ec.SMs76",score:"ach.surge_crates",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Surge Crate",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s77",tag:"Ec.SMs77",score:"ach.comp_devoted",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Devoted Pet",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s78",tag:"Ec.SMs78",score:"ach.comp_soulbound",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Soulbound Pet",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s79",tag:"Ec.SMs79",score:"ec.prestige_use",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Prestige",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s80",tag:"Ec.SMs80",score:"ec.sp_all_prestige",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"All Prestiges",max:1}

# Bulk claim prompt
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
