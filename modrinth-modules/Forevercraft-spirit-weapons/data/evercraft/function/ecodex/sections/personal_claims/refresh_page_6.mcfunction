# Refresh Personal Milestones — Page 6
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s41",tag:"Ec.SMs41",score:"ec.tt_mastery",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Trial Master",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s42",tag:"Ec.SMs42",score:"ec.tt_mastery",t1:6,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Grand Master",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s43",tag:"Ec.SMs43",score:"ec.tt_speed_clear",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Speed Demon",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s44",tag:"Ec.SMs44",score:"ec.tt_hard_wins",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Hard Mode Victor",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s45",tag:"Ec.SMs45",score:"ec.tt_daily_wins",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Daily Devotee",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s46",tag:"Ec.SMs46",score:"ec.sp_tier",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Spirit Awakened",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s47",tag:"Ec.SMs47",score:"ec.sp_tier",t1:15,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Spirit Ascended",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s48",tag:"Ec.SMs48",score:"ec.sp_flawless",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Flawless Victor",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s49",tag:"Ec.SMs49",score:"ec.sp_perfect_stealth",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Shadow Strike",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s50",tag:"Ec.SMs50",score:"ec.sp_rapid_snipe",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Rapid Fire",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s51",tag:"Ec.SMs51",score:"ec.sp_glyphs_full",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Glyph Master",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s52",tag:"Ec.SMs52",score:"ec.sp_solo_hollow",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Solo Hollow Sovereign",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s53",tag:"Ec.SMs53",score:"ec.sp_all_bosses",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"All Bosses Slain",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s54",tag:"Ec.SMs54",score:"ec.sp_bk1",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Hollow Sovereign",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s55",tag:"Ec.SMs55",score:"ec.sp_bk2",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Void Architect",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s56",tag:"Ec.SMs56",score:"ec.sp_bk3",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Gilded Tyrant",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s57",tag:"Ec.SMs57",score:"ec.sp_bk4",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew The Arbiter",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s58",tag:"Ec.SMs58",score:"ec.sp_bk5",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew The Gatekeeper",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s59",tag:"Ec.SMs59",score:"ec.sp_bk6",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Grand Illusionist",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s60",tag:"Ec.SMs60",score:"ec.sp_bk7",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Slew Ashen Lord",max:1}

# Bulk claim prompt
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
