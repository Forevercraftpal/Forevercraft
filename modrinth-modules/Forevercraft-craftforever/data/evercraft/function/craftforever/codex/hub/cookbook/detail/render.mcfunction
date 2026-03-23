$# ============================================================
$# Cookbook Detail — Render (macro)
$# Args: cat_name, cat_color, stars, tier, m_count, next_tier, r0-r5
$# Recipe names already replaced with "???" for undiscovered
$# ============================================================

$# --- Category header ---
$execute rotated ~ 0 positioned ^ ^2.60 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"~ ","color":"gray"},{"text":"$(cat_name)","color":"$(cat_color)","bold":true},{"text":" ~","color":"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}}

$# --- Tier + count ---
$execute rotated ~ 0 positioned ^ ^2.48 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(stars) ","color":"gold"},{"text":"$(tier)","color":"white"},{"text":"  \u2022  ","color":"dark_gray"},{"text":"$(m_count) meals cooked","color":"gray"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

$# --- Discovery header ---
$execute rotated ~ 0 positioned ^ ^2.32 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"Discovered Recipes","color":"white","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

$# --- Recipe list (6 slots, 0.12 spacing) ---
$execute rotated ~ 0 positioned ^ ^2.18 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"\u25b8 ","color":"$(cat_color)"},{"text":"$(r0)","color":"white"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
$execute rotated ~ 0 positioned ^ ^2.06 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"\u25b8 ","color":"$(cat_color)"},{"text":"$(r1)","color":"white"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
$execute rotated ~ 0 positioned ^ ^1.94 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"\u25b8 ","color":"$(cat_color)"},{"text":"$(r2)","color":"white"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
$execute rotated ~ 0 positioned ^ ^1.82 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"\u25b8 ","color":"$(cat_color)"},{"text":"$(r3)","color":"white"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
$execute rotated ~ 0 positioned ^ ^1.70 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"\u25b8 ","color":"$(cat_color)"},{"text":"$(r4)","color":"white"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
$execute rotated ~ 0 positioned ^ ^1.58 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"\u25b8 ","color":"$(cat_color)"},{"text":"$(r5)","color":"white"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}

$# --- Next tier info ---
$execute rotated ~ 0 positioned ^ ^1.38 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(next_tier)","color":"dark_gray","italic":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]}}
