# Lore Discovery Section — Dimension Picker (Section 6, Page 1)
# 4 dimension buttons + Exchange button with progress counts
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.LoreDimPick
# Run as the player, at player, facing anchor

# Reset lore GUI state
scoreboard players set @s adv.gui_page 1
scoreboard players set @s adv.gui_lore_dim 0
scoreboard players set @s adv.gui_lore_subcat 0
scoreboard players set @s adv.gui_lore_set 0

# Subtitle
execute rotated ~ 0 positioned ^ ^2.66 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"Choose a dimension to browse",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}

# === Overworld ===
execute rotated ~ 0 positioned ^ ^2.54 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"Overworld",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^2.44 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimDesc0"],billboard:"center",text:{text:"- / 83 sets",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.48 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimClick0"],width:0.8f,height:0.08f,response:1b}

# === Nether ===
execute rotated ~ 0 positioned ^ ^2.32 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"The Nether",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^2.22 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimDesc1"],billboard:"center",text:{text:"- / 30 sets",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.26 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimClick1"],width:0.8f,height:0.08f,response:1b}

# === The End ===
execute rotated ~ 0 positioned ^ ^2.10 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"The End",color:"dark_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^2.00 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimDesc2"],billboard:"center",text:{text:"- / 26 sets",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^2.04 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimClick2"],width:0.8f,height:0.08f,response:1b}

# === Lore Pages ===
execute rotated ~ 0 positioned ^ ^1.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"Lore Pages",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^1.78 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimDesc3"],billboard:"center",text:{text:"- / 24 sets",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.82 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreDimClick3"],width:0.8f,height:0.08f,response:1b}

# === Exchange ===
execute rotated ~ 0 positioned ^ ^1.54 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"Exchange",color:"yellow",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^ ^1.44 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"Trade duplicate lore pieces for shards",color:"gray",italic:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.48 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreExchangeClick"],width:0.8f,height:0.08f,response:1b}

# === Claim Rewards (merged from ecodex lore_claims) ===
# Count and display unclaimed lore rewards
function evercraft:claim/check_unclaimed
execute unless score @s ec.claim_lore matches 1.. rotated ~ 0 positioned ^ ^1.30 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"\u2713 Claim Rewards",color:"dark_green"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute if score @s ec.claim_lore matches 1.. rotated ~ 0 positioned ^ ^1.30 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"\u2726 Claim Rewards \u2726",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute unless score @s ec.claim_lore matches 1.. rotated ~ 0 positioned ^ ^1.20 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick"],billboard:"center",text:{text:"All lore rewards claimed","color":"gray","italic":true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute if score @s ec.claim_lore matches 1.. rotated ~ 0 positioned ^ ^1.20 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Ec.LoreClaimCount"],billboard:"center",text:[{"score":{"name":"@s","objective":"ec.claim_lore"},"color":"yellow"},{"text":" unclaimed reward(s)","color":"gold"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
execute rotated ~ 0 positioned ^ ^1.24 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.LoreDimPick","Adv.LoreClaimClick"],width:0.8f,height:0.08f,response:1b}

# Refresh with current data
function evercraft:codex/hub/lore/refresh_dims
