# Bestiary GUI — Page 5 Click Router
# Reads #bs_row bs.temp to determine which mob was clicked
# Run as the player

execute if score #bs_row bs.temp matches 0 run function evercraft:bestiary/gui/mob_detail {mob:"wither_skeleton",name:"Wither Skeleton",score:"bs.k_withskel",dscore:"bs.d_withskel",threshold:5000,index:45,field:"hi",bit:15,smob:"withskel",group:3,cid:45}
execute if score #bs_row bs.temp matches 1 run function evercraft:bestiary/gui/mob_detail {mob:"wolf",name:"Wolf",score:"bs.k_wolf",dscore:"bs.d_wolf",threshold:5000,index:46,field:"hi",bit:16,smob:"wolf",group:2,cid:46}
execute if score #bs_row bs.temp matches 2 run function evercraft:bestiary/gui/mob_detail {mob:"zoglin",name:"Zoglin",score:"bs.k_zoglin",dscore:"bs.d_zoglin",threshold:1,index:47,field:"hi",bit:17,smob:"zoglin",group:1,cid:47}
execute if score #bs_row bs.temp matches 3 run function evercraft:bestiary/gui/mob_detail {mob:"zombie",name:"Zombie",score:"bs.k_zombie",dscore:"bs.d_zombie",threshold:5000,index:48,field:"hi",bit:18,smob:"zombie",group:1,cid:48}
execute if score #bs_row bs.temp matches 4 run function evercraft:bestiary/gui/mob_detail {mob:"zombie_horse",name:"Zombie Horse",score:"bs.k_zombhrs",dscore:"bs.d_zombhrs",threshold:1,index:49,field:"hi",bit:19,smob:"zombhrs",group:1,cid:49}
execute if score #bs_row bs.temp matches 5 run function evercraft:bestiary/gui/mob_detail {mob:"zombie_nautilus",name:"Zombie Nautilus",score:"bs.k_znautls",dscore:"bs.d_znautls",threshold:1,index:50,field:"hi",bit:20,smob:"znautls",group:1,cid:50}
execute if score #bs_row bs.temp matches 6 run function evercraft:bestiary/gui/mob_detail {mob:"zombie_villager",name:"Zombie Villager",score:"bs.k_zombvill",dscore:"bs.d_zombvill",threshold:5000,index:51,field:"hi",bit:21,smob:"zombvill",group:1,cid:51}
execute if score #bs_row bs.temp matches 7 run function evercraft:bestiary/gui/mob_detail {mob:"zombified_piglin",name:"Zombified Piglin",score:"bs.k_zombpig",dscore:"bs.d_zombpig",threshold:5000,index:52,field:"hi",bit:22,smob:"zombpig",group:1,cid:52}
