# Lumberfell — Heartwood Spirit Axe
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"dark_green"}]
tellraw @s ["",{"text":"  \u2692 ","color":"dark_green"},{"text":"Lumberfell","color":"dark_green","bold":true},{"text":" — Heartwood","color":"gray"}]
tellraw @s ["",{"text":"  Spirit Axe","color":"gray"}]
tellraw @s ["",{"text":"═══════════════════════════════","color":"dark_green"}]
tellraw @s ""
tellraw @s ["",{"text":"  The forest answers to those who wield","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  the Heartwood. Fell mighty trees and","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  watch new life spring in their wake.","color":"#AAAAAA"}]
tellraw @s ""
tellraw @s ["",{"text":"  Abilities:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"   ✦ ","color":"dark_green"},{"text":"Spirit Fell","color":"white"},{"text":" — Chop entire trees","color":"gray"}]
tellraw @s ["",{"text":"     instantly (up to 512 logs)","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"dark_green"},{"text":"Precision Chop","color":"white"},{"text":" — Sneak to get","color":"gray"}]
tellraw @s ["",{"text":"     4 planks per log (correct wood type)","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"dark_green"},{"text":"Auto-Replant","color":"white"},{"text":" — Saplings plant","color":"gray"}]
tellraw @s ["",{"text":"     where trees once stood","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"dark_green"},{"text":"Item Magnet","color":"white"},{"text":" — Pulls drops from","color":"gray"}]
tellraw @s ["",{"text":"     16 blocks away","color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":"  Mastery — ","color":"light_purple"},{"text":"Worldroot","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"   Sneak to fell ALL trees in a 20-block","color":"#AAAAAA"}]
tellraw @s ["",{"text":"   radius. Replants everything. 60s CD.","color":"#AAAAAA"}]
tellraw @s ""
execute if score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"  CLASS AFFINITY","color":"dark_green","bold":true}]
execute if score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"   Stage: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffs_lf"},"color":"dark_green","bold":true},{"text":"/7","color":"gray"},{"text":"   Boost: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffb_lf"},"color":"green","bold":true},{"text":"%","color":"green"}]
execute if score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"   XP: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caff_lf"},"color":"dark_green"},{"text":" / 30,000,000","color":"dark_gray"}]
execute if score @s ec.caff_lf matches 1.. run tellraw @s ""
execute if score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"  Affinity Bonuses:","color":"yellow"}]
execute if score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_lf"},"color":"green"},{"text":"% woodcutting speed","color":"gray"}]
execute if score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_lf"},"color":"green"},{"text":"% extra log drops","color":"gray"}]
execute if score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"   +1% crate chance per 10% boost","color":"dark_gray"}]
execute if score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"   Max: 20% permanent (Spirit mastery)","color":"dark_gray"}]
execute unless score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"🔒 ","color":"dark_gray"},{"text":"Obtain the Heartwood to unlock","color":"dark_gray","italic":true}]
execute unless score @s ec.caff_lf matches 1.. run tellraw @s ["",{"text":"     affinity tracking.","color":"dark_gray","italic":true}]
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"dark_green"}]
