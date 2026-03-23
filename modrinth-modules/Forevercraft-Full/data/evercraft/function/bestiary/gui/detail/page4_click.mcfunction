# Bestiary GUI — Page 4 Click Router
# Reads #bs_row bs.temp to determine which mob was clicked
# Run as the player

execute if score #bs_row bs.temp matches 0 run function evercraft:bestiary/gui/mob_detail {mob:"pillager",name:"Pillager",score:"bs.k_pillager",dscore:"bs.d_pillager",threshold:5000,index:30,field:"hi",bit:0,smob:"pillager",group:2,cid:30}
execute if score #bs_row bs.temp matches 1 run function evercraft:bestiary/gui/mob_detail {mob:"polar_bear",name:"Polar Bear",score:"bs.k_polarbr",dscore:"bs.d_polarbr",threshold:5000,index:31,field:"hi",bit:1,smob:"polarbr",group:2,cid:31}
execute if score #bs_row bs.temp matches 2 run function evercraft:bestiary/gui/mob_detail {mob:"ravager",name:"Ravager",score:"bs.k_ravager",dscore:"bs.d_ravager",threshold:500,index:32,field:"hi",bit:2,smob:"ravager",group:3,cid:32}
execute if score #bs_row bs.temp matches 3 run function evercraft:bestiary/gui/mob_detail {mob:"shulker",name:"Shulker",score:"bs.k_shulker",dscore:"bs.d_shulker",threshold:5000,index:33,field:"hi",bit:3,smob:"shulker",group:3,cid:33}
execute if score #bs_row bs.temp matches 4 run function evercraft:bestiary/gui/mob_detail {mob:"silverfish",name:"Silverfish",score:"bs.k_silvrfsh",dscore:"bs.d_silvrfsh",threshold:5000,index:34,field:"hi",bit:4,smob:"silvrfsh",group:1,cid:34}
execute if score #bs_row bs.temp matches 5 run function evercraft:bestiary/gui/mob_detail {mob:"skeleton",name:"Skeleton",score:"bs.k_skeleton",dscore:"bs.d_skeleton",threshold:5000,index:35,field:"hi",bit:5,smob:"skeleton",group:1,cid:35}
execute if score #bs_row bs.temp matches 6 run function evercraft:bestiary/gui/mob_detail {mob:"slime",name:"Slime",score:"bs.k_slime",dscore:"bs.d_slime",threshold:5000,index:36,field:"hi",bit:6,smob:"slime",group:1,cid:36}
execute if score #bs_row bs.temp matches 7 run function evercraft:bestiary/gui/mob_detail {mob:"spider",name:"Spider",score:"bs.k_spider",dscore:"bs.d_spider",threshold:5000,index:37,field:"hi",bit:7,smob:"spider",group:1,cid:37}
execute if score #bs_row bs.temp matches 8 run function evercraft:bestiary/gui/mob_detail {mob:"stray",name:"Stray",score:"bs.k_stray",dscore:"bs.d_stray",threshold:5000,index:38,field:"hi",bit:8,smob:"stray",group:2,cid:38}
execute if score #bs_row bs.temp matches 9 run function evercraft:bestiary/gui/mob_detail {mob:"trader_llama",name:"Trader Llama",score:"bs.k_trllama",dscore:"bs.d_trllama",threshold:1,index:39,field:"hi",bit:9,smob:"trllama",group:2,cid:39}
execute if score #bs_row bs.temp matches 10 run function evercraft:bestiary/gui/mob_detail {mob:"vex",name:"Vex",score:"bs.k_vex",dscore:"bs.d_vex",threshold:1,index:40,field:"hi",bit:10,smob:"vex",group:3,cid:40}
execute if score #bs_row bs.temp matches 11 run function evercraft:bestiary/gui/mob_detail {mob:"vindicator",name:"Vindicator",score:"bs.k_vindctr",dscore:"bs.d_vindctr",threshold:5000,index:41,field:"hi",bit:11,smob:"vindctr",group:3,cid:41}
execute if score #bs_row bs.temp matches 12 run function evercraft:bestiary/gui/mob_detail {mob:"warden",name:"Warden",score:"bs.k_warden",dscore:"bs.d_warden",threshold:100,index:42,field:"hi",bit:12,smob:"warden",group:4,cid:42}
execute if score #bs_row bs.temp matches 13 run function evercraft:bestiary/gui/mob_detail {mob:"witch",name:"Witch",score:"bs.k_witch",dscore:"bs.d_witch",threshold:5000,index:43,field:"hi",bit:13,smob:"witch",group:2,cid:43}
execute if score #bs_row bs.temp matches 14 run function evercraft:bestiary/gui/mob_detail {mob:"wither",name:"Wither",score:"bs.k_wither",dscore:"bs.d_wither",threshold:1,index:44,field:"hi",bit:14,smob:"wither",group:5,cid:44}
