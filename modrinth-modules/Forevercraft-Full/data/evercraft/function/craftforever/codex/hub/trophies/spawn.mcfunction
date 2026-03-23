# Craftforever Codex — Trophy Gallery Section
# Two-column interactive layout with click-for-info
# Left-click a trophy to see how to earn it
# Run as player at player position

# Subtitle
execute rotated ~ 0 positioned ^ ^2.72 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Your collection of rare achievements",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

# Count trophies from bitfield (15 bits)
scoreboard players operation #cf_bits ec.temp = @s ec.cf_trophies
scoreboard players set #cf_trophy_count ec.temp 0
# Bit 0
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
# Bits 1-14
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp
execute store result score #cf_b ec.temp run scoreboard players operation #cf_bits ec.temp /= #2 ec.const
scoreboard players operation #cf_b ec.temp = #cf_bits ec.temp
scoreboard players operation #cf_b ec.temp %= #2 ec.const
scoreboard players operation #cf_trophy_count ec.temp += #cf_b ec.temp

execute store result storage evercraft:cf_temp trophy_count int 1 run scoreboard players get #cf_trophy_count ec.temp
function evercraft:craftforever/codex/hub/trophies/set_display with storage evercraft:cf_temp

# === LEFT COLUMN (bits 0-7) ===

# 0: Hearthkeeper
execute rotated ~ 0 positioned ^0.47 ^2.40 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy0"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.47 ^2.38 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl0"],width:0.5f,height:0.05f,response:1b}

# 1: Grand Architect
execute rotated ~ 0 positioned ^0.47 ^2.25 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy1"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.47 ^2.23 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl1"],width:0.5f,height:0.05f,response:1b}

# 2: Legendary Builder
execute rotated ~ 0 positioned ^0.47 ^2.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy2"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.47 ^2.08 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl2"],width:0.5f,height:0.05f,response:1b}

# 3: Dragon Slayer
execute rotated ~ 0 positioned ^0.47 ^1.95 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy3"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.47 ^1.93 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl3"],width:0.5f,height:0.05f,response:1b}

# 4: Wither Bane
execute rotated ~ 0 positioned ^0.47 ^1.80 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy4"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.47 ^1.78 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl4"],width:0.5f,height:0.05f,response:1b}

# 5: World Explorer
execute rotated ~ 0 positioned ^0.47 ^1.65 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy5"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.47 ^1.63 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl5"],width:0.5f,height:0.05f,response:1b}

# 6: Lore Keeper
execute rotated ~ 0 positioned ^0.47 ^1.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy6"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.47 ^1.48 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl6"],width:0.5f,height:0.05f,response:1b}

# 7: Battle Master
execute rotated ~ 0 positioned ^0.47 ^1.35 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy7"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^0.47 ^1.33 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl7"],width:0.5f,height:0.05f,response:1b}

# === RIGHT COLUMN (bits 8-14) ===

# 8: Pack Leader
execute rotated ~ 0 positioned ^-0.63 ^2.40 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy8"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.63 ^2.38 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl8"],width:0.5f,height:0.05f,response:1b}

# 9: CraftForever Star
execute rotated ~ 0 positioned ^-0.63 ^2.25 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy9"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.63 ^2.23 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl9"],width:0.5f,height:0.05f,response:1b}

# 10: Treasure Hunter
execute rotated ~ 0 positioned ^-0.63 ^2.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy10"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.63 ^2.08 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl10"],width:0.5f,height:0.05f,response:1b}

# 11: Expeditionist
execute rotated ~ 0 positioned ^-0.63 ^1.95 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy11"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.63 ^1.93 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl11"],width:0.5f,height:0.05f,response:1b}

# 12: Realm Champion
execute rotated ~ 0 positioned ^-0.63 ^1.80 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy12"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.63 ^1.78 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl12"],width:0.5f,height:0.05f,response:1b}

# 13: Spirit Forger
execute rotated ~ 0 positioned ^-0.63 ^1.65 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy13"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.63 ^1.63 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl13"],width:0.5f,height:0.05f,response:1b}

# 14: Guild Legend
execute rotated ~ 0 positioned ^-0.63 ^1.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.Trophy14"],billboard:"center",text:{text:"",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^-0.63 ^1.48 ^2.3 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.TrophyCl14"],width:0.5f,height:0.05f,response:1b}

# Footer
execute rotated ~ 0 positioned ^ ^1.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:{text:"Trophies boost Comfort by +25 when placed!",color:"dark_gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}

# Refresh display text for all trophies
function evercraft:craftforever/codex/hub/trophies/refresh
