# Refresh Personal Milestones — Page 13
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s121",tag:"Ec.SMs121",score:"ec.sp_enderman_kills",t1:50,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Enderman Slayer",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s122",tag:"Ec.SMs122",score:"ec.sp_shield_block",t1:100,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Shield Master",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s123",tag:"Ec.SMs123",score:"ec.sp_ability_variety",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ability Variety",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s124",tag:"Ec.SMs124",score:"ec.sp_impact_hits",t1:50,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Impact Striker",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s125",tag:"Ec.SMs125",score:"ec.sp_castle_max",t1:50,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Castle Floor 50",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s126",tag:"Ec.SMs126",score:"ec.sp_biomes",t1:20,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Biome Explorer",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s127",tag:"Ec.SMs127",score:"ec.sp_survive",t1:100,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Survival Endurance",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s128",tag:"Ec.SMs128",score:"ec.bd_tier",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Buddy Bond",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s129",tag:"Ec.SMs129",score:"ec.bd_tier",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Best Friends Forever",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s130",tag:"Ec.SMs130",score:"ec.heist_wins",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Heist Veteran",max:1}

# Bulk claim prompt
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
