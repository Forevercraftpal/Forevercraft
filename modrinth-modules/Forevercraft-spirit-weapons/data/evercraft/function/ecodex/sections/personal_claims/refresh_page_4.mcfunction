# Refresh Personal Milestones — Page 4 (One-Time)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s1",tag:"Ec.SMs1",score:"ach.total_kills",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Blood",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s2",tag:"Ec.SMs2",score:"ach.quests_done",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Adventurer's Call",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s3",tag:"Ec.SMs3",score:"ach.boss_kills",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Boss Challenger",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s4",tag:"Ec.SMs4",score:"ach.dungeons_done",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Dungeon Crawler",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s5",tag:"Ec.SMs5",score:"ach.comp_owned",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Pet Owner",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s6",tag:"Ec.SMs6",score:"ach.comp_eternal",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Soulbound",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s7",tag:"Ec.SMs7",score:"ec.artifacts_ever",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Lucky Find",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s8",tag:"Ec.SMs8",score:"ach.lore_found",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Lore Seeker",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s9",tag:"Ec.SMs9",score:"ach.structures_found",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Treasure Hunter",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s10",tag:"Ec.SMs10",score:"ach.crates_opened",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Unboxing Day",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s11",tag:"Ec.SMs11",score:"ach.adj_trade",t1:10,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Deal Maker",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s12",tag:"Ec.SMs12",score:"ec.bounty_done",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Bounty Contract",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s13",tag:"Ec.SMs13",score:"ach.elytra_merges",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Wing Commander",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s14",tag:"Ec.SMs14",score:"ach.runes_forged",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Rune Apprentice",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s15",tag:"Ec.SMs15",score:"ach.transmutes_done",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Transmute Novice",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s16",tag:"Ec.SMs16",score:"ach.meals_cooked",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Kitchen Fire",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s17",tag:"Ec.SMs17",score:"ach.forages_done",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Nature Walk",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s18",tag:"Ec.SMs18",score:"ach.prospects_done",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Ore Finder",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s19",tag:"Ec.SMs19",score:"ach.fish_caught",t1:1,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"First Catch",max:1}
function evercraft:ecodex/sections/refresh_milestone {system:"personal",id:"s20",tag:"Ec.SMs20",score:"ach.blocks_mined",t1:100,t2:999999999,t3:999999999,t4:999999999,t5:999999999,name:"Pickaxe Ready",max:1}

# Bulk claim prompt (only show if count changed since last display)
function evercraft:claim/count_personal
execute if score @s ec.claim_prs matches 2.. unless score @s ec.claim_prs = @s ec.claim_shw run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 2"},"hover_event":{"action":"show_text","value":"Claim all pending milestone rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_prs"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
scoreboard players operation @s ec.claim_shw = @s ec.claim_prs
