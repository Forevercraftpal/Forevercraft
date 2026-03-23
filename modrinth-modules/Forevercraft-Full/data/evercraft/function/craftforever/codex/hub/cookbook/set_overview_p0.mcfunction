$# Cookbook Overview — Page 0: Combat, Mining, Fortune, Wayfarer, Delicacy, Seasonal
$# Macro: receives m_combat, m_mining, m_fortune, m_wayfarer, m_delicacy, m_seasonal
$# 2-column × 3-row grid. Left x=0.60, Right x=-0.60. Rows y=2.52, 2.15, 1.78

$# --- Row 0 ---
$# Combat Cuisine (left)
$execute rotated ~ 0 positioned ^ ^2.52 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat0Text"],billboard:"center",text:[{"text":"Combat Cuisine","color":"#EF5350","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^2.42 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_combat) meals","color":"#EF5350"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^2.45 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat0Click"],width:0.55f,height:0.15f,response:1b}

$# Mining Meals (right)
$execute rotated ~ 0 positioned ^ ^2.52 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat1Text"],billboard:"center",text:[{"text":"Mining Meals","color":"#FFB74D","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^2.42 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_mining) meals","color":"#FFB74D"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^2.45 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat1Click"],width:0.55f,height:0.15f,response:1b}

$# --- Row 1 ---
$# Fortune Foods (left)
$execute rotated ~ 0 positioned ^ ^2.15 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat2Text"],billboard:"center",text:[{"text":"Fortune Foods","color":"#FDD835","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_fortune) meals","color":"#FDD835"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^2.08 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat2Click"],width:0.55f,height:0.15f,response:1b}

$# Wayfarer Fare (right)
$execute rotated ~ 0 positioned ^ ^2.15 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat3Text"],billboard:"center",text:[{"text":"Wayfarer Fare","color":"#66BB6A","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_wayfarer) meals","color":"#66BB6A"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^2.08 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat3Click"],width:0.55f,height:0.15f,response:1b}

$# --- Row 2 ---
$# Delicacies (left)
$execute rotated ~ 0 positioned ^ ^1.78 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat4Text"],billboard:"center",text:[{"text":"Delicacies","color":"#AB47BC","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^1.68 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_delicacy) meals","color":"#AB47BC"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^1.71 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat4Click"],width:0.55f,height:0.15f,response:1b}

$# Seasonal (right)
$execute rotated ~ 0 positioned ^ ^1.78 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat5Text"],billboard:"center",text:[{"text":"Seasonal","color":"#4FC3F7","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^1.68 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_seasonal) meals","color":"#4FC3F7"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^1.71 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat5Click"],width:0.55f,height:0.15f,response:1b}
