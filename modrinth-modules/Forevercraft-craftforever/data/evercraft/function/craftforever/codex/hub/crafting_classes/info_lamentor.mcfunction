# Lamentor — Silkgrasp Spirit Shears
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"light_purple"}]
tellraw @s ["",{"text":"  \u2702 ","color":"light_purple"},{"text":"Lamentor","color":"light_purple","bold":true},{"text":" — Silkgrasp","color":"gray"}]
tellraw @s ["",{"text":"  Spirit Shears","color":"gray"}]
tellraw @s ["",{"text":"═══════════════════════════════","color":"light_purple"}]
tellraw @s ""
tellraw @s ["",{"text":"  The Silkgrasp cuts with impossible","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  precision. Everything yields dual drops,","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  and even unwilling mobs can be sheared.","color":"#AAAAAA"}]
tellraw @s ""
tellraw @s ["",{"text":"  Abilities:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"   ✦ ","color":"light_purple"},{"text":"Dual Drops","color":"white"},{"text":" — Double shearing","color":"gray"}]
tellraw @s ["",{"text":"     yields from all sources","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"light_purple"},{"text":"Shear Any Mob","color":"white"},{"text":" — Works on all","color":"gray"}]
tellraw @s ["",{"text":"     creatures (wool, leather, feathers)","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"light_purple"},{"text":"Silk Touch","color":"white"},{"text":" — Harvest blocks","color":"gray"}]
tellraw @s ["",{"text":"     intact (glass, ice, coral, etc.)","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"light_purple"},{"text":"Item Magnet","color":"white"},{"text":" — Pulls drops from","color":"gray"}]
tellraw @s ["",{"text":"     12 blocks away","color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":"  Mastery — ","color":"light_purple"},{"text":"Spectral Shear","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"   Sneak to shear all mobs in a 16-block","color":"#AAAAAA"}]
tellraw @s ["",{"text":"   radius at once. Triple drops. 60s CD.","color":"#AAAAAA"}]
tellraw @s ""
execute if score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"  CLASS AFFINITY","color":"light_purple","bold":true}]
execute if score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"   Stage: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffs_lm"},"color":"light_purple","bold":true},{"text":"/7","color":"gray"},{"text":"   Boost: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffb_lm"},"color":"green","bold":true},{"text":"%","color":"green"}]
execute if score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"   XP: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caff_lm"},"color":"light_purple"},{"text":" / 30,000,000","color":"dark_gray"}]
execute if score @s ec.caff_lm matches 1.. run tellraw @s ""
execute if score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"  Affinity Bonuses:","color":"yellow"}]
execute if score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_lm"},"color":"green"},{"text":"% bonus wool/drop quantity","color":"gray"}]
execute if score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_lm"},"color":"green"},{"text":"% silk touch drop chance","color":"gray"}]
execute if score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"   +1% crate chance per 10% boost","color":"dark_gray"}]
execute if score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"   Max: 20% permanent (Spirit mastery)","color":"dark_gray"}]
execute unless score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"🔒 ","color":"dark_gray"},{"text":"Obtain the Silkgrasp to unlock","color":"dark_gray","italic":true}]
execute unless score @s ec.caff_lm matches 1.. run tellraw @s ["",{"text":"     affinity tracking.","color":"dark_gray","italic":true}]
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"light_purple"}]
