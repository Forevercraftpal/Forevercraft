# Bestiary GUI — Page 2 Click Router
# Reads #bs_row bs.temp to determine which mob was clicked
# Run as the player

execute if score #bs_row bs.temp matches 0 run function evercraft:bestiary/gui/mob_detail {mob:"bee",name:"Bee",score:"bs.k_bee",dscore:"bs.d_bee",threshold:5000,index:0,field:"lo",bit:0,smob:"bee",group:2,cid:1}
execute if score #bs_row bs.temp matches 1 run function evercraft:bestiary/gui/mob_detail {mob:"blaze",name:"Blaze",score:"bs.k_blaze",dscore:"bs.d_blaze",threshold:5000,index:1,field:"lo",bit:1,smob:"blaze",group:2,cid:2}
execute if score #bs_row bs.temp matches 2 run function evercraft:bestiary/gui/mob_detail {mob:"bogged",name:"Bogged",score:"bs.k_bogged",dscore:"bs.d_bogged",threshold:5000,index:2,field:"lo",bit:2,smob:"bogged",group:2,cid:3}
execute if score #bs_row bs.temp matches 3 run function evercraft:bestiary/gui/mob_detail {mob:"breeze",name:"Breeze",score:"bs.k_breeze",dscore:"bs.d_breeze",threshold:5000,index:3,field:"lo",bit:3,smob:"breeze",group:3,cid:4}
execute if score #bs_row bs.temp matches 4 run function evercraft:bestiary/gui/mob_detail {mob:"camel_husk",name:"Camel Husk",score:"bs.k_camhusk",dscore:"bs.d_camhusk",threshold:1,index:4,field:"lo",bit:4,smob:"camhusk",group:3,cid:5}
execute if score #bs_row bs.temp matches 5 run function evercraft:bestiary/gui/mob_detail {mob:"cave_spider",name:"Cave Spider",score:"bs.k_cavespdr",dscore:"bs.d_cavespdr",threshold:5000,index:5,field:"lo",bit:5,smob:"cavespdr",group:1,cid:6}
execute if score #bs_row bs.temp matches 6 run function evercraft:bestiary/gui/mob_detail {mob:"creaking",name:"Creaking",score:"bs.k_creaking",dscore:"bs.d_creaking",threshold:1,index:6,field:"lo",bit:6,smob:"creaking",group:4,cid:7}
execute if score #bs_row bs.temp matches 7 run function evercraft:bestiary/gui/mob_detail {mob:"creeper",name:"Creeper",score:"bs.k_creeper",dscore:"bs.d_creeper",threshold:5000,index:7,field:"lo",bit:7,smob:"creeper",group:2,cid:8}
execute if score #bs_row bs.temp matches 8 run function evercraft:bestiary/gui/mob_detail {mob:"dolphin",name:"Dolphin",score:"bs.k_dolphin",dscore:"bs.d_dolphin",threshold:5000,index:8,field:"lo",bit:8,smob:"dolphin",group:2,cid:9}
execute if score #bs_row bs.temp matches 9 run function evercraft:bestiary/gui/mob_detail {mob:"drowned",name:"Drowned",score:"bs.k_drowned",dscore:"bs.d_drowned",threshold:5000,index:9,field:"lo",bit:9,smob:"drowned",group:1,cid:10}
execute if score #bs_row bs.temp matches 10 run function evercraft:bestiary/gui/mob_detail {mob:"elder_guardian",name:"Elder Guardian",score:"bs.k_e_guard",dscore:"bs.d_e_guard",threshold:500,index:10,field:"lo",bit:10,smob:"e_guard",group:4,cid:11}
execute if score #bs_row bs.temp matches 11 run function evercraft:bestiary/gui/mob_detail {mob:"enderman",name:"Enderman",score:"bs.k_enderman",dscore:"bs.d_enderman",threshold:5000,index:11,field:"lo",bit:11,smob:"enderman",group:2,cid:12}
execute if score #bs_row bs.temp matches 12 run function evercraft:bestiary/gui/mob_detail {mob:"endermite",name:"Endermite",score:"bs.k_endmite",dscore:"bs.d_endmite",threshold:5000,index:12,field:"lo",bit:12,smob:"endmite",group:1,cid:13}
execute if score #bs_row bs.temp matches 13 run function evercraft:bestiary/gui/mob_detail {mob:"ender_dragon",name:"Ender Dragon",score:"bs.k_edragon",dscore:"bs.d_edragon",threshold:100,index:13,field:"lo",bit:13,smob:"edragon",group:5,cid:14}
execute if score #bs_row bs.temp matches 14 run function evercraft:bestiary/gui/mob_detail {mob:"evoker",name:"Evoker",score:"bs.k_evoker",dscore:"bs.d_evoker",threshold:500,index:14,field:"lo",bit:14,smob:"evoker",group:4,cid:15}
