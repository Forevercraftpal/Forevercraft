# Craftforever Codex — Material Index Section (Interactive)
# Shows all 15 biome node materials with discovery state + clickable details
# Run as player at player position
# Two columns: Left (^0.45) = materials 1-8, Right (^-0.45) = materials 9-15

# --- Count discovered materials from bitfield ---
scoreboard players operation #cf_bits ec.temp = @s ec.cf_materials
scoreboard players set #cf_mat_count ec.temp 0
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 2
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 4
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 8
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 16
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 32
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 64
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 128
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 256
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 512
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 1024
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 2048
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 4096
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 8192
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players set #cf_d ec.temp 16384
scoreboard players operation #cf_b ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_mat_count ec.temp += #cf_b ec.temp

# Display count via macro
execute store result storage evercraft:cf_temp mat_count int 1 run scoreboard players get #cf_mat_count ec.temp
function evercraft:craftforever/codex/hub/materials/set_display with storage evercraft:cf_temp

# ============================================================
# LEFT COLUMN (^0.45): Materials 1-8
# Y positions: 2.38, 2.24, 2.10, 1.96, 1.82, 1.68, 1.54, 1.40
# ============================================================

# --- Mat 1: Frostcrystal Shard (bit 0) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#7DD3FC"},{text:"Frostcrystal",color:"#7DD3FC"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^2.38 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow1"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^0.45 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 2: Sunite Dust (bit 1) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 2
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#FCD34D"},{text:"Sunite",color:"#FCD34D"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^2.24 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow2"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^0.45 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 3: Voidite Fragment (bit 2) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 4
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^2.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#164E63"},{text:"Voidite",color:"#164E63"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^2.10 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow3"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^0.45 ^2.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 4: Livingstone Moss (bit 3) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 8
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#4ADE80"},{text:"Livingstone",color:"#4ADE80"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.96 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow4"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^0.45 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 5: Tideforged Pearl (bit 4) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 16
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#22D3EE"},{text:"Tideforged",color:"#22D3EE"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.82 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow5"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^0.45 ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 6: Blazite Crystal (bit 5) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 32
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#EF4444"},{text:"Blazite",color:"#EF4444"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.68 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow6"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^0.45 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 7: Warpstone Dust (bit 6) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 64
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.54 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#2DD4BF"},{text:"Warpstone",color:"#2DD4BF"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.54 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow7"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^0.45 ^1.54 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 8: Endric Shard (bit 7) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 128
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.40 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#A855F7"},{text:"Endric",color:"#A855F7"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^0.45 ^1.40 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow8"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^0.45 ^1.40 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# ============================================================
# RIGHT COLUMN (^-0.45): Materials 9-15
# ============================================================

# --- Mat 9: Sporite Cap (bit 8) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 256
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#E879F9"},{text:"Sporite",color:"#E879F9"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^2.38 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow9"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^-0.45 ^2.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 10: Verdant Gem (bit 9) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 512
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#34D399"},{text:"Verdant",color:"#34D399"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^2.24 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow10"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^-0.45 ^2.24 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 11: Skymetal Nugget (bit 10) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 1024
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^2.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#E2E8F0"},{text:"Skymetal",color:"#E2E8F0"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^2.10 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow11"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^-0.45 ^2.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 12: Sunforged Brick (bit 11) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 2048
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#F97316"},{text:"Sunforged",color:"#F97316"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^1.96 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow12"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^-0.45 ^1.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 13: Shadowroot Extract (bit 12) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 4096
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#581C87"},{text:"Shadowroot",color:"#581C87"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^1.82 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow13"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^-0.45 ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 14: Bogstone (bit 13) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 8192
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#65A30D"},{text:"Bogstone",color:"#65A30D"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^1.68 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow14"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^-0.45 ^1.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Mat 15: Blossom Essence (bit 14) ---
scoreboard players operation #cf_check ec.temp = @s ec.cf_materials
scoreboard players set #cf_d ec.temp 16384
scoreboard players operation #cf_check ec.temp /= #cf_d ec.temp
scoreboard players operation #cf_check ec.temp %= #2 ec.const
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^1.54 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c6 ",color:"#F9A8D4"},{text:"Blossom",color:"#F9A8D4"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score #cf_check ec.temp matches 1 rotated ~ 0 positioned ^-0.45 ^1.54 ^2.3 run summon interaction ~ ~ ~ {width:0.5f,height:0.1f,response:1b,Tags:["CF.MenuElement","CF.SectionContent","CF.MatRow15"]}
execute if score #cf_check ec.temp matches 0 rotated ~ 0 positioned ^-0.45 ^1.54 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{text:"\u25c7 ",color:"dark_gray"},{text:"???",color:"dark_gray",obfuscated:true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# --- Click hint ---
execute rotated ~ 0 positioned ^ ^1.22 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Click a material to view details",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.189f,0.189f,0.189f]}}
