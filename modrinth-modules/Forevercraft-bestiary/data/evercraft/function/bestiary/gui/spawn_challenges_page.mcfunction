# Bestiary GUI — Re-spawn Challenges Page Content (Page 1)
# Run as the player, facing anchor
# Spawns just the challenge rows (not nav arrows, those persist)

# === LEFT COLUMN (^0.60) — Challenges 0-6 ===
execute rotated ~ 0 positioned ^0.6 ^2.56 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal0"],billboard:"center",text:{text:"Agility: Marathon",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^2.52 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick0"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^0.6 ^2.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal1"],billboard:"center",text:{text:"Dexterity: Precision",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^2.38 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick1"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^0.6 ^2.28 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal2"],billboard:"center",text:{text:"Evasion: Master",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^2.24 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick2"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^0.6 ^2.14 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal3"],billboard:"center",text:{text:"Stealth: Assassin",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^2.1 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick3"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^0.6 ^2 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal4"],billboard:"center",text:{text:"Vitality: Warrior",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^1.96 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick4"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^0.6 ^1.86 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal5"],billboard:"center",text:{text:"Taskmaster: Quests",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^1.82 ^1.8 positioned ^0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick5"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^ ^1.72 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal6"],billboard:"center",text:{text:"Beastmaster: Beasts",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^1.68 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick6"],width:0.55f,height:0.06f,response:1b}

# === RIGHT COLUMN (^-0.60) — Challenges 7-12 ===
execute rotated ~ 0 positioned ^-0.6 ^2.56 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal7"],billboard:"center",text:{text:"Victorian: Elegant",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^2.52 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick7"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^-0.6 ^2.42 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal8"],billboard:"center",text:{text:"Fishing: Angler",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^2.38 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick8"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^-0.6 ^2.28 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal9"],billboard:"center",text:{text:"Mining: Master",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^2.24 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick9"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^-0.6 ^2.14 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal10"],billboard:"center",text:{text:"Gathering: Harvester",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^2.1 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick10"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^-0.6 ^2 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal11"],billboard:"center",text:{text:"Blacksmith: Smelter",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^1.96 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick11"],width:0.55f,height:0.06f,response:1b}

execute rotated ~ 0 positioned ^-0.6 ^1.86 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.Chal12"],billboard:"center",text:{text:"Explorer: Expeditionist",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.324f,0.324f,0.324f]}}
execute rotated ~ 0 positioned ^ ^1.82 ^1.8 positioned ^-0.60 ^0 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalClick12"],width:0.55f,height:0.06f,response:1b}

# Info button
execute rotated ~ 0 positioned ^ ^1.58 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent"],billboard:"center",text:{text:"[?] View All Challenges [?]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^ ^1.56 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Bs.PageContent","Adv.ChalInfoClick"],width:0.55f,height:0.04f,response:1b}

# Refresh challenge displays
function evercraft:advantage/gui/refresh_challenges
