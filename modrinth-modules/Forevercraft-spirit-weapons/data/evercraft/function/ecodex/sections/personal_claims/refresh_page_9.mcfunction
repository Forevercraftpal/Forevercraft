# Refresh Personal Milestones — Page 9 (Staged)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p101",tag:"Ec.PMs101",score:"hs.visitors",t1:5,t2:15,t3:30,t4:50,t5:100,name:"Popular Home",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p102",tag:"Ec.PMs102",score:"hs.decor",t1:10,t2:30,t3:60,t4:100,t5:200,name:"Decorator",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p103",tag:"Ec.PMs103",score:"hs.stashed",t1:25,t2:100,t3:250,t4:500,t5:1000,name:"Item Stasher",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p104",tag:"Ec.PMs104",score:"ec.gs_pet_count",t1:1,t2:3,t3:5,t4:8,t5:12,name:"Guild Pets",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p105",tag:"Ec.PMs105",score:"ec.sp_combat_heals",t1:50,t2:200,t3:500,t4:1000,t5:2500,name:"Combat Healer",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p106",tag:"Ec.PMs106",score:"ec.sp_ally_heals",t1:25,t2:100,t3:250,t4:500,t5:1000,name:"Ally Healer",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p107",tag:"Ec.PMs107",score:"ec.sp_thrown_kills",t1:10,t2:50,t3:100,t4:250,t5:500,name:"Thrown Weapons",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p108",tag:"Ec.PMs108",score:"ec.sp_taunts",t1:25,t2:100,t3:250,t4:500,t5:1000,name:"Taunt Master",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p109",tag:"Ec.PMs109",score:"ec.sp_dungeon_runs",t1:5,t2:20,t3:50,t4:100,t5:200,name:"Dungeon Runner",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p110",tag:"Ec.PMs110",score:"ec.sp_total_floors",t1:50,t2:200,t3:500,t4:1000,t5:2500,name:"Floor Clearer",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p111",tag:"Ec.PMs111",score:"ec.prestige_use",t1:1,t2:5,t3:15,t4:30,t5:60,name:"Prestige Tokens",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p112",tag:"Ec.PMs112",score:"ach.prestige_combat",t1:1,t2:3,t3:5,t4:8,t5:10,name:"Combat Prestige",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p113",tag:"Ec.PMs113",score:"ach.prestige_gathering",t1:1,t2:3,t3:5,t4:8,t5:10,name:"Gathering Prestige",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p114",tag:"Ec.PMs114",score:"ach.prestige_companions",t1:1,t2:3,t3:5,t4:8,t5:10,name:"Companion Prestige",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p115",tag:"Ec.PMs115",score:"ach.prestige_exploration",t1:1,t2:3,t3:5,t4:8,t5:10,name:"Explorer Prestige",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p116",tag:"Ec.PMs116",score:"ach.prestige_collection",t1:1,t2:3,t3:5,t4:8,t5:10,name:"Collector Prestige",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p117",tag:"Ec.PMs117",score:"ach.prestige_growth",t1:1,t2:3,t3:5,t4:8,t5:10,name:"Growth Prestige",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p118",tag:"Ec.PMs118",score:"ach.weapon_abilities",t1:50,t2:200,t3:500,t4:1500,t5:5000,name:"Weapon Abilities",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p119",tag:"Ec.PMs119",score:"ach.surge_triggers",t1:5,t2:20,t3:50,t4:100,t5:250,name:"Surge Triggers",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"p120",tag:"Ec.PMs120",score:"ach.dodge_count",t1:25,t2:100,t3:250,t4:500,t5:1000,name:"Dodge Master",max:5}

# Bulk claim prompt
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
