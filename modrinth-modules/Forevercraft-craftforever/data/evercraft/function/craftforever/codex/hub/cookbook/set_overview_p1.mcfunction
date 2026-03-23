$# Cookbook Overview — Page 1: Treats, Rations, Feast, Preserve, Spirit
$# Macro: receives m_treats, m_ration, m_feast, m_preserve, m_spirit
$# 2-column × 3-row grid. Left x=0.60, Right x=-0.60. Rows y=2.52, 2.15, 1.78

$# --- Row 0 ---
$# Treats (left)
$execute rotated ~ 0 positioned ^ ^2.52 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat6Text"],billboard:"center",text:[{"text":"Treats","color":"#F9A8D4","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^2.42 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_treats) meals","color":"#F9A8D4"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^2.45 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat6Click"],width:0.55f,height:0.15f,response:1b}

$# Rations (right)
$execute rotated ~ 0 positioned ^ ^2.52 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat7Text"],billboard:"center",text:[{"text":"Rations","color":"#8D6E63","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^2.42 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_ration) meals","color":"#8D6E63"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^2.45 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat7Click"],width:0.55f,height:0.15f,response:1b}

$# --- Row 1 ---
$# Feast Platters (left)
$execute rotated ~ 0 positioned ^ ^2.15 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat8Text"],billboard:"center",text:[{"text":"Feast Platters","color":"#FF7043","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_feast) meals","color":"#FF7043"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^2.08 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat8Click"],width:0.55f,height:0.15f,response:1b}

$# Preservation (right)
$execute rotated ~ 0 positioned ^ ^2.15 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat9Text"],billboard:"center",text:[{"text":"Preservation","color":"#78909C","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^2.05 ^2.28 positioned ^-0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_preserve) meals","color":"#78909C"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^2.08 ^2.3 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat9Click"],width:0.55f,height:0.15f,response:1b}

$# --- Row 2 ---
$# Spirit Cuisine (left, only item on this row)
$execute rotated ~ 0 positioned ^ ^1.78 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat10Text"],billboard:"center",text:[{"text":"Spirit Cuisine","color":"#CE93D8","bold":true}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
$execute rotated ~ 0 positioned ^ ^1.68 ^2.28 positioned ^0.60 ^0 ^0 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["CF.MenuElement","CF.SectionContent"],billboard:"center",text:[{"text":"$(m_spirit) meals","color":"#CE93D8"}],background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.216f,0.216f,0.216f]}}
$execute rotated ~ 0 positioned ^ ^1.71 ^2.3 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["CF.MenuElement","CF.SectionContent","CF.CkCat10Click"],width:0.55f,height:0.15f,response:1b}
