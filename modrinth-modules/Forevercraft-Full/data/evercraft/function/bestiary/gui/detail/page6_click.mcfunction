# Bestiary GUI — Page 6 Click Router (World Bosses)
# Reads #bs_row bs.temp to determine which boss was clicked
# Run as the player

execute if score #bs_row bs.temp matches 0 run function evercraft:bestiary/gui/mob_detail {mob:"hollow_king",name:"The Hollow King",score:"bs.k_hollking",dscore:"bs.d_hollking",threshold:100,index:100,field:"wb",bit:0,smob:"hollking",group:6,cid:53}
execute if score #bs_row bs.temp matches 1 run function evercraft:bestiary/gui/mob_detail {mob:"verdant_warden",name:"The Verdant Warden",score:"bs.k_verdwrdn",dscore:"bs.d_verdwrdn",threshold:100,index:101,field:"wb",bit:1,smob:"verdwrdn",group:6,cid:54}
execute if score #bs_row bs.temp matches 2 run function evercraft:bestiary/gui/mob_detail {mob:"stormforged",name:"The Stormforged",score:"bs.k_stormfrg",dscore:"bs.d_stormfrg",threshold:100,index:102,field:"wb",bit:2,smob:"stormfrg",group:6,cid:55}
execute if score #bs_row bs.temp matches 3 run function evercraft:bestiary/gui/mob_detail {mob:"tidecaller",name:"The Tidecaller",score:"bs.k_tidecllr",dscore:"bs.d_tidecllr",threshold:100,index:103,field:"wb",bit:3,smob:"tidecllr",group:6,cid:56}
execute if score #bs_row bs.temp matches 4 run function evercraft:bestiary/gui/mob_detail {mob:"earthshaker",name:"The Earthshaker",score:"bs.k_erthshkr",dscore:"bs.d_erthshkr",threshold:100,index:104,field:"wb",bit:4,smob:"erthshkr",group:6,cid:57}
execute if score #bs_row bs.temp matches 5 run function evercraft:bestiary/gui/mob_detail {mob:"nightmare",name:"The Nightmare",score:"bs.k_nightmre",dscore:"bs.d_nightmre",threshold:100,index:105,field:"wb",bit:5,smob:"nightmre",group:6,cid:58}
execute if score #bs_row bs.temp matches 6 run function evercraft:bestiary/gui/mob_detail {mob:"infernal_titan",name:"The Infernal Titan",score:"bs.k_inftitan",dscore:"bs.d_inftitan",threshold:100,index:106,field:"wb",bit:6,smob:"inftitan",group:6,cid:59}
execute if score #bs_row bs.temp matches 7 run function evercraft:bestiary/gui/mob_detail {mob:"soul_warden",name:"The Soul Warden",score:"bs.k_soulwrdn",dscore:"bs.d_soulwrdn",threshold:100,index:107,field:"wb",bit:7,smob:"soulwrdn",group:6,cid:60}
execute if score #bs_row bs.temp matches 8 run function evercraft:bestiary/gui/mob_detail {mob:"crimson_behemoth",name:"The Crimson Behemoth",score:"bs.k_crimbhmt",dscore:"bs.d_crimbhmt",threshold:100,index:108,field:"wb",bit:8,smob:"crimbhmt",group:6,cid:61}
execute if score #bs_row bs.temp matches 9 run function evercraft:bestiary/gui/mob_detail {mob:"void_sovereign",name:"The Void Sovereign",score:"bs.k_voidsovr",dscore:"bs.d_voidsovr",threshold:100,index:109,field:"wb",bit:9,smob:"voidsovr",group:6,cid:62}
execute if score #bs_row bs.temp matches 10 run function evercraft:bestiary/gui/mob_detail {mob:"ender_architect",name:"The Ender Architect",score:"bs.k_endrarch",dscore:"bs.d_endrarch",threshold:100,index:110,field:"wb",bit:10,smob:"endrarch",group:6,cid:63}
