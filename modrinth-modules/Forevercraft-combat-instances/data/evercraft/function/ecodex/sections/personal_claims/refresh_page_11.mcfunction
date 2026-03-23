# Refresh Personal Milestones — Page 11
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s81",tag:"Ec.SMs81",score:"ic.record",t1:25,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Castle Floor 25",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s82",tag:"Ec.SMs82",score:"ic.record",t1:50,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Castle Floor 50",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s83",tag:"Ec.SMs83",score:"ic.record",t1:100,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Castle Floor 100",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s84",tag:"Ec.SMs84",score:"hs.visitors",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Visitor",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s85",tag:"Ec.SMs85",score:"ach.housing_tier",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Max Housing Tier",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s86",tag:"Ec.SMs86",score:"ec.gs_pet_count",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Guild Pet",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s87",tag:"Ec.SMs87",score:"ec.guild_rank",t1:5,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Guild Officer",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s88",tag:"Ec.SMs88",score:"ec.guild_rank",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Guild Leader",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s89",tag:"Ec.SMs89",score:"ach.dungeon_no_death",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"10 Deathless Runs",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s90",tag:"Ec.SMs90",score:"ach.dungeons_done",t1:100,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"100 Dungeons Done",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s91",tag:"Ec.SMs91",score:"ach.lore_sets",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Lore Set",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s92",tag:"Ec.SMs92",score:"ach.lore_sets",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"All Lore Sets",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s93",tag:"Ec.SMs93",score:"ach.total_kills",t1:10000,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"10K Kills",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s94",tag:"Ec.SMs94",score:"ach.total_kills",t1:100000,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"100K Kills",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s95",tag:"Ec.SMs95",score:"ach.boss_unique",t1:25,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"25 Unique Bosses",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s96",tag:"Ec.SMs96",score:"ach.village_upgrades",t1:12,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"All Village Upgrades",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s97",tag:"Ec.SMs97",score:"ach.trees_unlocked",t1:13,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"All Trees Unlocked",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s98",tag:"Ec.SMs98",score:"ach.mined_debris",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ancient Debris 10",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s99",tag:"Ec.SMs99",score:"ach.no_sleep_days",t1:7,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"No Sleep 7 Days",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s100",tag:"Ec.SMs100",score:"ach.deaths",t1:100,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Death Collector",max:1}

# Bulk claim prompt
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
