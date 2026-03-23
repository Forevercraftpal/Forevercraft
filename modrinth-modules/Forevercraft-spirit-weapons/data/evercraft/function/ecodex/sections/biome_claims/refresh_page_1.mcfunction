# Refresh Biome Claims — Page 1
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b0",tag:"Ec.BmS1",score:"ec.bm0",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Plains",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b1",tag:"Ec.BmS2",score:"ec.bm1",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Forest",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b2",tag:"Ec.BmS3",score:"ec.bm2",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Flower Forest",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b3",tag:"Ec.BmS4",score:"ec.bm3",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Dark Forest",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b4",tag:"Ec.BmS5",score:"ec.bm4",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Taiga",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b5",tag:"Ec.BmS6",score:"ec.bm5",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Mountain",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b6",tag:"Ec.BmS7",score:"ec.bm6",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Jungle",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b7",tag:"Ec.BmS8",score:"ec.bm7",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Desert",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b8",tag:"Ec.BmS9",score:"ec.bm8",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Savanna",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b9",tag:"Ec.BmS10",score:"ec.bm9",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Ocean",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b10",tag:"Ec.BmS11",score:"ec.bm10",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"River",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b11",tag:"Ec.BmS12",score:"ec.bm11",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Swamp",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b12",tag:"Ec.BmS13",score:"ec.bm12",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Mushroom Island",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b13",tag:"Ec.BmS14",score:"ec.bm13",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Ice",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b14",tag:"Ec.BmS15",score:"ec.bm14",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Badlands",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b15",tag:"Ec.BmS16",score:"ec.bm15",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Lush Caves",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b16",tag:"Ec.BmS17",score:"ec.bm16",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Dripstone Caves",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b17",tag:"Ec.BmS18",score:"ec.bm17",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Deep Dark",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b18",tag:"Ec.BmS19",score:"ec.bm18",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Nether Wastes",max:5}
function evercraft:ecodex/sections/refresh_milestone {system:"biome",id:"b19",tag:"Ec.BmS20",score:"ec.bm19",t1:1800,t2:7200,t3:21600,t4:54000,t5:108000,name:"Crimson Forest",max:5}

# Bulk claim prompt
function evercraft:claim/count_biome
execute if score @s ec.claim_biome matches 2.. run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u2726 Claim All","color":"dark_aqua","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.bulk_clm set 6"},"hover_event":{"action":"show_text","value":"Claim all pending biome rewards"}},{"text":"]","color":"dark_gray"},{"text":" \u2014 ","color":"gray"},{"score":{"name":"@s","objective":"ec.claim_biome"},"color":"yellow"},{"text":" pending reward(s)","color":"gray"}]
