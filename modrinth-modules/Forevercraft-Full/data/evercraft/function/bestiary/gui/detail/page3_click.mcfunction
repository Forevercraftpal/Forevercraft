# Bestiary GUI — Page 3 Click Router
# Reads #bs_row bs.temp to determine which mob was clicked
# Run as the player

execute if score #bs_row bs.temp matches 0 run function evercraft:bestiary/gui/mob_detail {mob:"fox",name:"Fox",score:"bs.k_fox",dscore:"bs.d_fox",threshold:5000,index:15,field:"lo",bit:15,smob:"fox",group:2,cid:16}
execute if score #bs_row bs.temp matches 1 run function evercraft:bestiary/gui/mob_detail {mob:"ghast",name:"Ghast",score:"bs.k_ghast",dscore:"bs.d_ghast",threshold:5000,index:16,field:"lo",bit:16,smob:"ghast",group:3,cid:17}
execute if score #bs_row bs.temp matches 2 run function evercraft:bestiary/gui/mob_detail {mob:"goat",name:"Goat",score:"bs.k_goat",dscore:"bs.d_goat",threshold:5000,index:17,field:"lo",bit:17,smob:"goat",group:2,cid:18}
execute if score #bs_row bs.temp matches 3 run function evercraft:bestiary/gui/mob_detail {mob:"guardian",name:"Guardian",score:"bs.k_guardian",dscore:"bs.d_guardian",threshold:5000,index:18,field:"lo",bit:18,smob:"guardian",group:3,cid:19}
execute if score #bs_row bs.temp matches 4 run function evercraft:bestiary/gui/mob_detail {mob:"hoglin",name:"Hoglin",score:"bs.k_hoglin",dscore:"bs.d_hoglin",threshold:5000,index:19,field:"lo",bit:19,smob:"hoglin",group:1,cid:20}
execute if score #bs_row bs.temp matches 5 run function evercraft:bestiary/gui/mob_detail {mob:"husk",name:"Husk",score:"bs.k_husk",dscore:"bs.d_husk",threshold:5000,index:20,field:"lo",bit:20,smob:"husk",group:1,cid:21}
execute if score #bs_row bs.temp matches 6 run function evercraft:bestiary/gui/mob_detail {mob:"iron_golem",name:"Iron Golem",score:"bs.k_ironglm",dscore:"bs.d_ironglm",threshold:500,index:22,field:"lo",bit:22,smob:"ironglm",group:2,cid:22}
execute if score #bs_row bs.temp matches 7 run function evercraft:bestiary/gui/mob_detail {mob:"llama",name:"Llama",score:"bs.k_llama",dscore:"bs.d_llama",threshold:5000,index:23,field:"lo",bit:23,smob:"llama",group:2,cid:23}
execute if score #bs_row bs.temp matches 8 run function evercraft:bestiary/gui/mob_detail {mob:"magma_cube",name:"Magma Cube",score:"bs.k_magcube",dscore:"bs.d_magcube",threshold:5000,index:24,field:"lo",bit:24,smob:"magcube",group:2,cid:24}
execute if score #bs_row bs.temp matches 9 run function evercraft:bestiary/gui/mob_detail {mob:"panda",name:"Panda",score:"bs.k_panda",dscore:"bs.d_panda",threshold:5000,index:25,field:"lo",bit:25,smob:"panda",group:2,cid:25}
execute if score #bs_row bs.temp matches 10 run function evercraft:bestiary/gui/mob_detail {mob:"parched",name:"Parched",score:"bs.k_parched",dscore:"bs.d_parched",threshold:1,index:26,field:"lo",bit:26,smob:"parched",group:2,cid:26}
execute if score #bs_row bs.temp matches 11 run function evercraft:bestiary/gui/mob_detail {mob:"phantom",name:"Phantom",score:"bs.k_phantom",dscore:"bs.d_phantom",threshold:5000,index:27,field:"lo",bit:27,smob:"phantom",group:2,cid:27}
execute if score #bs_row bs.temp matches 12 run function evercraft:bestiary/gui/mob_detail {mob:"piglin",name:"Piglin",score:"bs.k_piglin",dscore:"bs.d_piglin",threshold:5000,index:28,field:"lo",bit:28,smob:"piglin",group:2,cid:28}
execute if score #bs_row bs.temp matches 13 run function evercraft:bestiary/gui/mob_detail {mob:"piglin_brute",name:"Piglin Brute",score:"bs.k_pigbrute",dscore:"bs.d_pigbrute",threshold:500,index:29,field:"lo",bit:29,smob:"pigbrute",group:3,cid:29}
