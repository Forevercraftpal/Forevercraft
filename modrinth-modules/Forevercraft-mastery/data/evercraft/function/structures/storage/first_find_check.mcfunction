# Structure First-Find Check — runs as player before track_struct_type
# If this is the first time looting this structure type, grant bonus XP + message
# Only one line fires per call (matches cf.struct_id)

# --- Ornate (200 XP) ---
execute if score @s cf.struct_id matches 1 unless score @s ec.struct_1 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Ancient City",color:"gold",xp:"200"}
execute if score @s cf.struct_id matches 2 unless score @s ec.struct_2 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"End City",color:"gold",xp:"200"}
execute if score @s cf.struct_id matches 6 unless score @s ec.struct_6 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Bastion Remnant",color:"gold",xp:"200"}

# --- Rare (150 XP) ---
execute if score @s cf.struct_id matches 3 unless score @s ec.struct_3 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Trial Chambers",color:"blue",xp:"150"}
execute if score @s cf.struct_id matches 4 unless score @s ec.struct_4 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Stronghold",color:"blue",xp:"150"}
execute if score @s cf.struct_id matches 5 unless score @s ec.struct_5 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Woodland Mansion",color:"blue",xp:"150"}
execute if score @s cf.struct_id matches 7 unless score @s ec.struct_7 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Nether Fortress",color:"blue",xp:"150"}
execute if score @s cf.struct_id matches 8 unless score @s ec.struct_8 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Ocean Monument",color:"blue",xp:"150"}

# --- Uncommon (100 XP) ---
execute if score @s cf.struct_id matches 9 unless score @s ec.struct_9 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Desert Pyramid",color:"green",xp:"100"}
execute if score @s cf.struct_id matches 10 unless score @s ec.struct_10 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Jungle Pyramid",color:"green",xp:"100"}
execute if score @s cf.struct_id matches 17 unless score @s ec.struct_17 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Mineshaft",color:"green",xp:"100"}

# --- Common (50 XP) ---
execute if score @s cf.struct_id matches 11 unless score @s ec.struct_11 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Shipwreck",color:"white",xp:"50"}
execute if score @s cf.struct_id matches 12 unless score @s ec.struct_12 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Ocean Ruin",color:"white",xp:"50"}
execute if score @s cf.struct_id matches 13 unless score @s ec.struct_13 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Igloo",color:"white",xp:"50"}
execute if score @s cf.struct_id matches 14 unless score @s ec.struct_14 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Pillager Outpost",color:"white",xp:"50"}
execute if score @s cf.struct_id matches 15 unless score @s ec.struct_15 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Trail Ruins",color:"white",xp:"50"}
execute if score @s cf.struct_id matches 16 unless score @s ec.struct_16 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Village",color:"white",xp:"50"}
execute if score @s cf.struct_id matches 18 unless score @s ec.struct_18 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Ruined Portal",color:"white",xp:"50"}
execute if score @s cf.struct_id matches 19 unless score @s ec.struct_19 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Unknown Structure",color:"gray",xp:"50"}
execute if score @s cf.struct_id matches 20 unless score @s ec.struct_20 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Unknown Structure",color:"gray",xp:"50"}
execute if score @s cf.struct_id matches 21 unless score @s ec.struct_21 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Unknown Structure",color:"gray",xp:"50"}
execute if score @s cf.struct_id matches 22 unless score @s ec.struct_22 matches 1 run function evercraft:structures/storage/first_find_bonus {name:"Unknown Structure",color:"gray",xp:"50"}
