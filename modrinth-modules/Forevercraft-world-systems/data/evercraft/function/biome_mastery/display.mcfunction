# Biome Mastery — Display all mastered biomes (/trigger ec.biome_mastery)
# @s = player

tellraw @s {text:""}
tellraw @s [{text:"=== ",color:"gray"},{text:"Biome Mastery",color:"#4CAF50",bold:true},{text:" ===",color:"gray"}]
tellraw @s {text:""}

scoreboard players set #bm_shown ec.temp 0

# Display each biome with time > 0 (writes to bm_temp storage, calls macro)
data merge storage evercraft:bm_temp {id:0,name:"Plains"}
execute if score @s ec.bm0 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:1,name:"Forest"}
execute if score @s ec.bm1 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:2,name:"Flower Forest"}
execute if score @s ec.bm2 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:3,name:"Dark Forest"}
execute if score @s ec.bm3 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:4,name:"Taiga"}
execute if score @s ec.bm4 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:5,name:"Mountain"}
execute if score @s ec.bm5 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:6,name:"Jungle"}
execute if score @s ec.bm6 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:7,name:"Desert"}
execute if score @s ec.bm7 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:8,name:"Savanna"}
execute if score @s ec.bm8 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:9,name:"Ocean"}
execute if score @s ec.bm9 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:10,name:"River"}
execute if score @s ec.bm10 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:11,name:"Swamp"}
execute if score @s ec.bm11 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:12,name:"Mushroom Island"}
execute if score @s ec.bm12 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:13,name:"Ice"}
execute if score @s ec.bm13 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:14,name:"Badlands"}
execute if score @s ec.bm14 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:15,name:"Lush Caves"}
execute if score @s ec.bm15 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:16,name:"Dripstone Caves"}
execute if score @s ec.bm16 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:17,name:"Deep Dark"}
execute if score @s ec.bm17 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:18,name:"Nether Wastes"}
execute if score @s ec.bm18 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:19,name:"Crimson Forest"}
execute if score @s ec.bm19 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:20,name:"Warped Forest"}
execute if score @s ec.bm20 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:21,name:"Basalt Deltas"}
execute if score @s ec.bm21 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:22,name:"Soul Sand Valley"}
execute if score @s ec.bm22 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:23,name:"The End"}
execute if score @s ec.bm23 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp
data merge storage evercraft:bm_temp {id:24,name:"Windswept Hills"}
execute if score @s ec.bm24 matches 1.. run function evercraft:biome_mastery/display_line with storage evercraft:bm_temp

# No biomes explored yet
execute if score #bm_shown ec.temp matches 0 run tellraw @s [{text:"  No biomes explored yet!",color:"dark_gray",italic:true}]

tellraw @s {text:""}
tellraw @s [{text:"=========================",color:"gray"}]
