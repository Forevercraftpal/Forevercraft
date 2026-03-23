# Codex Hub — Spawn Hub Buttons
# Advantage Trees centered on top, then buttons in columns
# Each button = name text_display + description text_display + interaction entity
# All tagged Adv.MenuElement + Adv.HubContent

# ===== HELP BUTTON (top right, smaller) =====
execute rotated ~ 0 positioned ^-1.02 ^2.87 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtnHelp"],billboard:"center",text:{text:"Help",color:"white",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^-1.02 ^2.85 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClickHelp"],width:0.35f,height:0.04f,response:1b}

# ===== FEATURED: ADVANTAGE TREES (centered top) =====

# === Button 0: Advantage Trees ===
# Name (centered, slightly larger)
execute rotated ~ 0 positioned ^0.0 ^2.68 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn0"],billboard:"center",text:{text:"\u2694 Advantage Trees \u2694",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.567f,0.567f,0.567f]}}
# Description
execute rotated ~ 0 positioned ^0.0 ^2.57 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Level up skills & abilities",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
# Interaction (wider for centered button)
execute rotated ~ 0 positioned ^0.0 ^2.67 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick0"],width:0.55f,height:0.03f,response:1b}

# ===== LEFT COLUMN =====

# === Button 1: Challenges ===
# Name
execute rotated ~ 0 positioned ^0.72 ^2.32 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn1"],billboard:"center",text:{text:"\u2620 Challenges \u2620",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
# Description
execute rotated ~ 0 positioned ^0.72 ^2.21 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Accept & track challenges",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
# Interaction
execute rotated ~ 0 positioned ^0.72 ^2.26 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick1"],width:0.6f,height:0.07f,response:1b}

# === Button 2: Bestiary (gold when unclaimed bestiary rewards) ===
# Name
execute unless score @s ec.claim_bst matches 1.. rotated ~ 0 positioned ^0.72 ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn2"],billboard:"center",text:{text:"\u2756 Bestiary \u2756",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute if score @s ec.claim_bst matches 1.. rotated ~ 0 positioned ^0.72 ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn2"],billboard:"center",text:{text:"\u2756 Bestiary \u2756",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
# Description
execute unless score @s ec.claim_bst matches 1.. rotated ~ 0 positioned ^0.72 ^1.71 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Monster compendium & drops",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute if score @s ec.claim_bst matches 1.. rotated ~ 0 positioned ^0.72 ^1.71 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Unclaimed rewards available!",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
# Interaction
execute rotated ~ 0 positioned ^0.72 ^1.77 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick2"],width:0.6f,height:0.07f,response:1b}

# === Button 3: Artifact Collection ===
# Name
execute rotated ~ 0 positioned ^0.72 ^1.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn3"],billboard:"center",text:{text:"\u2666 Artifact Collection \u2666",color:"light_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
# Description
execute rotated ~ 0 positioned ^0.72 ^1.39 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Browse discovered artifacts",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
# Interaction
execute rotated ~ 0 positioned ^0.72 ^1.45 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick3"],width:0.6f,height:0.07f,response:1b}

# ===== RIGHT COLUMN =====

# === Button 4: Travel Journal (gold when ANY sub-section has unclaimed: rm, lore, biome) ===
# Compute combined flag
scoreboard players set #gold_tj ec.temp 0
execute if score @s ec.claim_rm matches 1.. run scoreboard players set #gold_tj ec.temp 1
execute if score @s ec.claim_lore matches 1.. run scoreboard players set #gold_tj ec.temp 1
execute if score @s ec.claim_biome matches 1.. run scoreboard players set #gold_tj ec.temp 1
# Name
execute unless score #gold_tj ec.temp matches 1 rotated ~ 0 positioned ^-0.72 ^2.32 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn4"],billboard:"center",text:{text:"\u2605 Travel Journal \u2605",color:"dark_aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute if score #gold_tj ec.temp matches 1 rotated ~ 0 positioned ^-0.72 ^2.32 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn4"],billboard:"center",text:{text:"\u2605 Travel Journal \u2605",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
# Description
execute unless score #gold_tj ec.temp matches 1 rotated ~ 0 positioned ^-0.72 ^2.21 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Exploration progress",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute if score #gold_tj ec.temp matches 1 rotated ~ 0 positioned ^-0.72 ^2.21 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Unclaimed rewards available!",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
# Interaction
execute rotated ~ 0 positioned ^-0.72 ^2.26 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick4"],width:0.6f,height:0.07f,response:1b}

# === Button 5: Party (moved up from row 3, was row 2 Lore Discovery) ===
# Name
execute rotated ~ 0 positioned ^-0.72 ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn5"],billboard:"center",text:{text:"\u2691 Party \u2691",color:"dark_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
# Description
execute rotated ~ 0 positioned ^-0.72 ^1.71 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Manage party & synergies",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
# Interaction
execute rotated ~ 0 positioned ^-0.72 ^1.77 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick5"],width:0.6f,height:0.07f,response:1b}

# === Button 6: Classes (gold when unclaimed class affinity rewards) ===
# Name
execute unless score @s ec.claim_aff matches 1.. rotated ~ 0 positioned ^-0.72 ^1.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn6"],billboard:"center",text:{text:"\u2741 Classes \u2741",color:"dark_red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
execute if score @s ec.claim_aff matches 1.. rotated ~ 0 positioned ^-0.72 ^1.50 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn6"],billboard:"center",text:{text:"\u2741 Classes \u2741",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.513f,0.513f,0.513f]}}
# Description
execute unless score @s ec.claim_aff matches 1.. rotated ~ 0 positioned ^-0.72 ^1.39 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Weapon classes & artifacts",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute if score @s ec.claim_aff matches 1.. rotated ~ 0 positioned ^-0.72 ^1.39 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Unclaimed rewards available!",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
# Interaction
execute rotated ~ 0 positioned ^-0.72 ^1.45 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick6"],width:0.6f,height:0.07f,response:1b}

# ===== FEATURED: MILESTONES (centered bottom) =====

# === Button 7: Milestones (gold when ANY milestone type has unclaimed rewards) ===
# Compute combined flag
scoreboard players set #gold_ms ec.temp 0
execute if score @s ec.claim_rm matches 1.. run scoreboard players set #gold_ms ec.temp 1
execute if score @s ec.claim_prs matches 1.. run scoreboard players set #gold_ms ec.temp 1
execute if score @s ec.claim_cft matches 1.. run scoreboard players set #gold_ms ec.temp 1
# Name (centered, slightly larger)
execute unless score #gold_ms ec.temp matches 1 rotated ~ 0 positioned ^0.0 ^1.22 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn7"],billboard:"center",text:{text:"\u2726 Milestones \u2726",color:"#E0B0FF",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.567f,0.567f,0.567f]}}
execute if score #gold_ms ec.temp matches 1 rotated ~ 0 positioned ^0.0 ^1.22 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn7"],billboard:"center",text:{text:"\u2726 Milestones \u2726",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.567f,0.567f,0.567f]}}
# Description
execute unless score #gold_ms ec.temp matches 1 rotated ~ 0 positioned ^0.0 ^1.11 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Track progress & claim rewards",color:"gray"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute if score #gold_ms ec.temp matches 1 rotated ~ 0 positioned ^0.0 ^1.11 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Unclaimed rewards available!",color:"gold"},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
# Interaction (wider for centered button)
execute rotated ~ 0 positioned ^0.0 ^1.17 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick7"],width:0.8f,height:0.07f,response:1b}

# ===== CODEX UPGRADE BUTTONS (bottom corners, conditional) =====

# Combine with Tome of Experience (tier < 2, has tome in inventory)
execute if score @s ec.codex_tier matches ..1 if items entity @s container.* book[custom_data~{tome_of_experience:true}] rotated ~ 0 positioned ^0.72 ^0.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtnCombTome"],billboard:"center",text:{text:"\u2726 Absorb Tome \u2726",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute if score @s ec.codex_tier matches ..1 if items entity @s container.* book[custom_data~{tome_of_experience:true}] rotated ~ 0 positioned ^0.72 ^0.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Unlock XP Banking",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score @s ec.codex_tier matches ..1 if items entity @s container.* book[custom_data~{tome_of_experience:true}] rotated ~ 0 positioned ^0.72 ^0.93 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClickCombTome"],width:0.55f,height:0.06f,response:1b}

# Combine with Portal Dial (tier = 2, has dial in inventory)
execute if score @s ec.codex_tier matches 2 if items entity @s container.* *[custom_data~{portal_dial:true}] rotated ~ 0 positioned ^-0.72 ^0.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtnCombDial"],billboard:"center",text:{text:"\u2726 Absorb Dial \u2726",color:"#FF6B35",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute if score @s ec.codex_tier matches 2 if items entity @s container.* *[custom_data~{portal_dial:true}] rotated ~ 0 positioned ^-0.72 ^0.88 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent"],billboard:"center",text:{text:"Upgrade to Phoenix Codex",color:"gray",italic:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
execute if score @s ec.codex_tier matches 2 if items entity @s container.* *[custom_data~{portal_dial:true}] rotated ~ 0 positioned ^-0.72 ^0.93 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClickCombDial"],width:0.55f,height:0.06f,response:1b}

# XP Bank — Deposit (tier >= 2, bottom left)
execute if score @s ec.codex_tier matches 2.. rotated ~ 0 positioned ^0.72 ^0.96 ^2.28 unless items entity @s container.* book[custom_data~{tome_of_experience:true}] run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtnXpDeposit"],billboard:"center",text:{text:"\u2b07 Deposit XP",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute if score @s ec.codex_tier matches 2.. rotated ~ 0 positioned ^0.72 ^0.93 ^2.3 unless items entity @s container.* book[custom_data~{tome_of_experience:true}] run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClickXpDeposit"],width:0.5f,height:0.05f,response:1b}

# XP Bank — Withdraw (tier >= 2, bottom right)
execute if score @s ec.codex_tier matches 2.. rotated ~ 0 positioned ^-0.72 ^0.96 ^2.28 unless score @s ec.codex_tier matches 2 unless items entity @s container.* *[custom_data~{portal_dial:true}] run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtnXpWithdraw"],billboard:"center",text:{text:"\u2b06 Withdraw XP",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute if score @s ec.codex_tier matches 2.. rotated ~ 0 positioned ^-0.72 ^0.93 ^2.3 unless score @s ec.codex_tier matches 2 unless items entity @s container.* *[custom_data~{portal_dial:true}] run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClickXpWithdraw"],width:0.5f,height:0.05f,response:1b}

# XP Bank — Withdraw (tier = 2 WITHOUT dial — show on right side)
execute if score @s ec.codex_tier matches 2 unless items entity @s container.* *[custom_data~{portal_dial:true}] rotated ~ 0 positioned ^-0.72 ^0.96 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtnXpWithdraw"],billboard:"center",text:{text:"\u2b06 Withdraw XP",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute if score @s ec.codex_tier matches 2 unless items entity @s container.* *[custom_data~{portal_dial:true}] rotated ~ 0 positioned ^-0.72 ^0.93 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClickXpWithdraw"],width:0.5f,height:0.05f,response:1b}

# ===== PAGE NAVIGATION ARROWS (between rows 1 and 2) =====

# LEFT ARROW — Guild page (section 11)
# Gold if in guild, gray if not
execute if score @s ec.guild_id matches 1.. rotated ~ 0 positioned ^1.60 ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubNavLeft"],billboard:"center",text:{text:"\u25C0",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute unless score @s ec.guild_id matches 1.. rotated ~ 0 positioned ^1.60 ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubNavLeft"],billboard:"center",text:{text:"\u25C0",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^1.60 ^2.02 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubNavLeftClick"],width:0.45f,height:0.05f,response:1b}

# RIGHT ARROW — Friends page (section 12)
execute rotated ~ 0 positioned ^-1.60 ^2.05 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubNavRight"],billboard:"center",text:{text:"\u25B6",color:"gold",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.432f,0.432f,0.432f]}}
execute rotated ~ 0 positioned ^-1.60 ^2.02 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubNavRightClick"],width:0.45f,height:0.05f,response:1b}

# ===== GACHA BUTTON (top left, smaller — mirrors Help button) =====
execute rotated ~ 0 positioned ^1.02 ^2.87 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubBtn8"],billboard:"center",text:{text:"Gacha",color:"white",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.351f,0.351f,0.351f]}}
execute rotated ~ 0 positioned ^1.02 ^2.85 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.HubContent","Adv.HubClick8"],width:0.35f,height:0.04f,response:1b}
