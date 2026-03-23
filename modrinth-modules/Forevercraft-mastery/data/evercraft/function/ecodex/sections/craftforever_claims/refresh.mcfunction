# Ecodex — Refresh Craftforever Milestones Display
# Run as: player, at player

# Session stamp for multiplayer-safe entity targeting
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Standard milestones (direct score comparison)
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c1",tag:"Ec.CMs1",score:"ach.meals_cooked",t1:25,t2:75,t3:200,t4:400,t5:750,name:"Master Chef",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c2",tag:"Ec.CMs2",score:"ck.m_combat",t1:10,t2:30,t3:60,t4:100,t5:150,name:"Combat Chef",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c3",tag:"Ec.CMs3",score:"ck.m_mining",t1:10,t2:30,t3:60,t4:100,t5:150,name:"Mining Chef",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c4",tag:"Ec.CMs4",score:"ck.m_fortune",t1:10,t2:30,t3:60,t4:100,t5:150,name:"Fortune Chef",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c5",tag:"Ec.CMs5",score:"ach.recipes_learned",t1:10,t2:20,t3:30,t4:35,t5:42,name:"Recipe Hunter",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c6",tag:"Ec.CMs6",score:"ec.tt_completed",t1:10,t2:30,t3:60,t4:100,t5:200,name:"Trial Champion",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c7",tag:"Ec.CMs7",score:"ec.cf_rank",t1:20,t2:40,t3:60,t4:80,t5:100,name:"Artisan Rank",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c8",tag:"Ec.CMs8",score:"ec.cf_total_forges",t1:25,t2:75,t3:200,t4:400,t5:750,name:"Master Forger",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c9",tag:"Ec.CMs9",score:"ec.st_tools_made",t1:1,t2:3,t3:5,t4:6,t5:999,name:"Spirit Toolsmith",max:4}

# Bitfield milestones — pre-compute bit counts into player scores
scoreboard players operation #ms_bitfield ec.temp = @s ec.cf_materials
function evercraft:milestones/craftforever/count_bits_15
scoreboard players operation @s ec.cf_mat_bits = #ms_bit_count ec.temp

scoreboard players operation #ms_bitfield ec.temp = @s ec.cf_nodes_found
function evercraft:milestones/craftforever/count_bits_15
scoreboard players operation @s ec.cf_node_bits = #ms_bit_count ec.temp

function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c10",tag:"Ec.CMs10",score:"ec.cf_mat_bits",t1:3,t2:6,t3:9,t4:12,t5:15,name:"Material Collector",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c11",tag:"Ec.CMs11",score:"ec.cf_node_bits",t1:3,t2:7,t3:10,t4:13,t5:15,name:"Biome Node Hunter",max:5}

# Standard score milestone
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c12",tag:"Ec.CMs12",score:"ec.pantry_stored",t1:50,t2:200,t3:500,t4:1000,t5:2000,name:"Pantry Hoarder",max:5}

# Trial mastery milestones (c13-c18: best tier per category)
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c13",tag:"Ec.CMs13",score:"ec.tt_m_best",t1:2,t2:4,t3:6,t4:8,t5:10,name:"Mining Master",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c14",tag:"Ec.CMs14",score:"ec.tt_farm_best",t1:2,t2:4,t3:6,t4:8,t5:10,name:"Harvest Lord",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c15",tag:"Ec.CMs15",score:"ec.tt_fish_best",t1:2,t2:4,t3:6,t4:8,t5:10,name:"Master Angler",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c16",tag:"Ec.CMs16",score:"ec.tt_build_best",t1:2,t2:4,t3:6,t4:8,t5:10,name:"Grand Architect",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c17",tag:"Ec.CMs17",score:"ec.tt_lumb_best",t1:2,t2:4,t3:6,t4:8,t5:10,name:"Lumberjack Legend",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c18",tag:"Ec.CMs18",score:"ec.tt_art_best",t1:2,t2:4,t3:6,t4:8,t5:10,name:"Artisan Supreme",max:5}

# Grand Master + Speed Demon
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c19",tag:"Ec.CMs19",score:"ec.tt_mastery",t1:1,t2:2,t3:4,t4:5,t5:6,name:"Grand Master",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"craftforever",id:"c20",tag:"Ec.CMs20",score:"ec.tt_speed_clear",t1:1,t2:5,t3:15,t4:30,t5:60,name:"Speed Demon",max:5}

# Bulk claim prompt (if 2+ unclaimed stages available)
function evercraft:claim/count_craftforever
execute if score @s ec.claim_cft matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"light_purple","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 3"},"hover_event":{"action":"show_text","value":"Claim all pending CraftForever rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_cft"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]

# Gold header when unclaimed rewards exist
execute if score @s ec.claim_cft matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Craftforever \u2726",color:"gold",bold:true}
execute unless score @s ec.claim_cft matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Craftforever \u2726",color:"light_purple",bold:true}
