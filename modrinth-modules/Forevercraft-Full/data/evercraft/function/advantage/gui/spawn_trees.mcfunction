# Spawn all 14 tree text_displays + interaction entities
# 3 columns: Adventure (left ^1.0), Progression (center ^0.0), Gathering (right ^-1.0)
# Rows start at ^1.72 with 0.17 spacing downward
# Each tree: text_display (for name+level) + interaction (for click)
# All tagged Adv.Page1 for page switching
# Interaction Y = text_Y - 0.12 (hitbox height 0.12 extends upward to text_Y exactly)

# === ADVENTURE COLUMN (^1.0) ===
# Agility (slot 0) — row 1
execute rotated ~ 0 positioned ^1.0 ^2.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree0"],billboard:"center",text:{text:"Agility  Lv.0",color:"aqua"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^2.38 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click0"],width:0.4f,height:0.06f,response:1b}

# Dexterity (slot 1) — row 2
execute rotated ~ 0 positioned ^1.0 ^2.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree1"],billboard:"center",text:{text:"Dexterity  Lv.0",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click1"],width:0.4f,height:0.06f,response:1b}

# Evasion (slot 2) — row 3
execute rotated ~ 0 positioned ^1.0 ^2.08 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree2"],billboard:"center",text:{text:"Evasion  Lv.0",color:"white"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^2.04 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click2"],width:0.4f,height:0.06f,response:1b}

# Stealth (slot 3) — row 4
execute rotated ~ 0 positioned ^1.0 ^1.91 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree3"],billboard:"center",text:{text:"Stealth  Lv.0",color:"dark_gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^1.87 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click3"],width:0.4f,height:0.06f,response:1b}

# Vitality (slot 4) — row 5
execute rotated ~ 0 positioned ^1.0 ^1.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree4"],billboard:"center",text:{text:"Vitality  Lv.0",color:"red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^1.7 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click4"],width:0.4f,height:0.06f,response:1b}

# === PROGRESSION COLUMN (^0.0) ===
# Taskmaster (slot 5) — row 1
execute rotated ~ 0 positioned ^ ^2.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree5"],billboard:"center",text:{text:"Taskmaster  Lv.0",color:"dark_purple"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^2.38 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click5"],width:0.4f,height:0.06f,response:1b}

# Beastmaster (slot 6) — row 2
execute rotated ~ 0 positioned ^ ^2.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree6"],billboard:"center",text:{text:"Beastmaster  Lv.0",color:"green"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click6"],width:0.4f,height:0.06f,response:1b}

# Victorian (slot 7) — row 3
execute rotated ~ 0 positioned ^ ^2.08 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree7"],billboard:"center",text:{text:"Victorian  Lv.0",color:"dark_red"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^2.04 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click7"],width:0.4f,height:0.06f,response:1b}

# Culinary (slot 13) — row 4 (under Victorian in Progression column)
execute rotated ~ 0 positioned ^ ^1.91 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree13"],billboard:"center",text:{text:"Culinary  Lv.0",color:"green"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^1.87 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click13"],width:0.4f,height:0.06f,response:1b}

# === GATHERING COLUMN (^-1.0) ===
# Fishing (slot 8) — row 1
execute rotated ~ 0 positioned ^-1.0 ^2.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree8"],billboard:"center",text:{text:"Fishing  Lv.0",color:"blue"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^2.38 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click8"],width:0.4f,height:0.06f,response:1b}

# Mining (slot 9) — row 2
execute rotated ~ 0 positioned ^-1.0 ^2.25 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree9"],billboard:"center",text:{text:"Mining  Lv.0",color:"gold"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^2.21 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click9"],width:0.4f,height:0.06f,response:1b}

# Gathering (slot 10) — row 3
execute rotated ~ 0 positioned ^-1.0 ^2.08 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree10"],billboard:"center",text:{text:"Gathering  Lv.0",color:"green"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^2.04 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click10"],width:0.4f,height:0.06f,response:1b}

# Blacksmith (slot 11) — row 4
execute rotated ~ 0 positioned ^-1.0 ^1.91 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree11"],billboard:"center",text:{text:"Blacksmith  Lv.0",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^1.87 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click11"],width:0.4f,height:0.06f,response:1b}

# Explorer (slot 12) — row 5
execute rotated ~ 0 positioned ^-1.0 ^1.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.Tree12"],billboard:"center",text:{text:"Explorer  Lv.0",color:"dark_aqua"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.473f,0.473f,0.473f]}}
execute rotated ~ 0 positioned ^ ^1.7 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.Click12"],width:0.4f,height:0.06f,response:1b}

# === [?] INFO BUTTONS — one per column branch, at the bottom ===
# Adventure [?]
execute rotated ~ 0 positioned ^1.0 ^1.6 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.TreeInfo"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^ ^1.56 ^1.8 positioned ^1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.BranchInfoClick0"],width:0.2f,height:0.06f,response:1b}

# Progression [?]
execute rotated ~ 0 positioned ^ ^1.74 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.TreeInfo"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^ ^1.7 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.BranchInfoClick1"],width:0.2f,height:0.06f,response:1b}

# Gathering [?]
execute rotated ~ 0 positioned ^-1.0 ^1.6 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1","Adv.TreeInfo"],billboard:"center",text:{text:"[?]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
execute rotated ~ 0 positioned ^ ^1.56 ^1.8 positioned ^-1.0 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.BranchInfoClick2"],width:0.2f,height:0.06f,response:1b}

# Column headers (also Page1)
execute rotated ~ 0 positioned ^1.0 ^2.58 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1"],billboard:"center",text:{text:"\u2694 Adventure",color:"red",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

execute rotated ~ 0 positioned ^ ^2.58 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1"],billboard:"center",text:{text:"\ud83d\udcdc Progression",color:"dark_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

execute rotated ~ 0 positioned ^-1.0 ^2.58 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1"],billboard:"center",text:{text:"\ud83c\udf3f Gathering",color:"green",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]}}

# === ACTION BUTTONS — bottom center ===
# [Respec] button — left of center (^0.50)
execute rotated ~ 0 positioned ^0.5 ^1.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1"],billboard:"center",text:{text:"[Respec]",color:"dark_purple",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.38 ^1.8 positioned ^0.50 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.RespecBtnClick"],width:0.35f,height:0.06f,response:1b}

# [Stats] button — right of center (^-0.50)
execute rotated ~ 0 positioned ^-0.5 ^1.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.Page1"],billboard:"center",text:{text:"[Stats]",color:"aqua",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute rotated ~ 0 positioned ^ ^1.38 ^1.8 positioned ^-0.50 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.Page1","Adv.StatsBtnClick"],width:0.35f,height:0.06f,response:1b}

# Set levels on all tree displays
function evercraft:advantage/gui/refresh
