# Craftforever Codex — Recipe Book Section (Interactive)
# Shows forging recipes with discovery state + clickable detail views
# Run as player at player position

# --- Subtitle ---
execute rotated ~ 0 positioned ^ ^2.75 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Forging recipes you've discovered",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# --- Count discovered recipes from bitfield ---
scoreboard players operation #cf_bits ec.temp = @s ec.cf_recipes_found
scoreboard players set #cf_recipe_count ec.temp 0
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_recipe_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 2
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_recipe_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 4
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_recipe_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 8
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_recipe_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 16
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_recipe_count ec.temp += #cf_b ec.temp

# Display count via macro
execute store result storage evercraft:cf_temp recipe_count int 1 run scoreboard players get #cf_recipe_count ec.temp
function evercraft:craftforever/codex/hub/recipes/set_display with storage evercraft:cf_temp

# --- Section Header ---
execute rotated ~ 0 positioned ^ ^2.30 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"\u2692 Forge Table Recipes",color:"#FFB74D",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.31f,0.31f,0.31f]}}

# ============================================================
# Recipe 1: Tempered Alloy (bit 0, Rank 1)
# ============================================================
scoreboard players operation #cf_check ec.temp = @s ec.cf_recipes_found
scoreboard players operation #cf_check ec.temp %= #2 ec.const
# Discovered
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^2.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"#FFB74D"},{text:"Tempered Alloy",color:"white"},{text:" \u2014 ",color:"dark_gray"},{text:"Rank 1",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^2.10 ^2.3 run summon interaction ~ ~ ~ {width:1.0f,height:0.12f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.RecipeRow1"]}
# Undiscovered
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^ ^2.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_gray"},{text:"??? ",color:"dark_gray",obfuscated:true},{text:"\u2014 Rank 1",color:"dark_gray",obfuscated:false}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# ============================================================
# Recipe 2: Starforged Ingot (bit 1, Rank 20)
# ============================================================
scoreboard players operation #cf_check ec.temp = @s ec.cf_recipes_found
scoreboard players set #cf_d ec.temp 2
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
# Discovered
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^1.92 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"#FFB74D"},{text:"Starforged Ingot",color:"#4FC3F7"},{text:" \u2014 ",color:"dark_gray"},{text:"Rank 20",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^1.92 ^2.3 run summon interaction ~ ~ ~ {width:1.0f,height:0.12f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.RecipeRow2"]}
# Undiscovered
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^ ^1.92 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_gray"},{text:"??? ",color:"dark_gray",obfuscated:true},{text:"\u2014 Rank 20",color:"dark_gray",obfuscated:false}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# ============================================================
# Recipe 3: Dreamwrought Bar (bit 2, Rank 40)
# ============================================================
scoreboard players operation #cf_check ec.temp = @s ec.cf_recipes_found
scoreboard players set #cf_d ec.temp 4
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
# Discovered
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^1.74 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"#FFB74D"},{text:"Dreamwrought Bar",color:"#AB47BC"},{text:" \u2014 ",color:"dark_gray"},{text:"Rank 40",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^1.74 ^2.3 run summon interaction ~ ~ ~ {width:1.0f,height:0.12f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.RecipeRow3"]}
# Undiscovered
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^ ^1.74 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_gray"},{text:"??? ",color:"dark_gray",obfuscated:true},{text:"\u2014 Rank 40",color:"dark_gray",obfuscated:false}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# ============================================================
# Recipe 4: Eternal Essence (bit 3, Rank 60)
# ============================================================
scoreboard players operation #cf_check ec.temp = @s ec.cf_recipes_found
scoreboard players set #cf_d ec.temp 8
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
# Discovered
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^1.56 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"#FFB74D"},{text:"Eternal Essence",color:"gold"},{text:" \u2014 ",color:"dark_gray"},{text:"Rank 60",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^1.56 ^2.3 run summon interaction ~ ~ ~ {width:1.0f,height:0.12f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.RecipeRow4"]}
# Undiscovered
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^ ^1.56 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_gray"},{text:"??? ",color:"dark_gray",obfuscated:true},{text:"\u2014 Rank 60",color:"dark_gray",obfuscated:false}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# ============================================================
# Recipe 5: Soulbound Core (bit 4, Rank 80)
# ============================================================
scoreboard players operation #cf_check ec.temp = @s ec.cf_recipes_found
scoreboard players set #cf_d ec.temp 16
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
# Discovered
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^1.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"#FFB74D"},{text:"Soulbound Core",color:"white",bold:true},{text:" \u2014 ",color:"dark_gray"},{text:"Rank 80",color:"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^ ^1.38 ^2.3 run summon interaction ~ ~ ~ {width:1.0f,height:0.12f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.RecipeRow5"]}
# Undiscovered
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^ ^1.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25b6 ",color:"dark_gray"},{text:"??? ",color:"dark_gray",obfuscated:true},{text:"\u2014 Rank 80",color:"dark_gray",obfuscated:false}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# --- Click hint ---
execute rotated ~ 0 positioned ^ ^1.18 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Click a discovered recipe for details",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
