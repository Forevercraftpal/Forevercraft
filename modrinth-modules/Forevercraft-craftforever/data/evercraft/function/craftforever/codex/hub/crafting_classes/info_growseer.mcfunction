# Growseer — Bloomweaver Spirit Hoe
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"green"}]
tellraw @s ["",{"text":"  \u2698 ","color":"green"},{"text":"Growseer","color":"green","bold":true},{"text":" — Bloomweaver","color":"gray"}]
tellraw @s ["",{"text":"  Spirit Hoe","color":"gray"}]
tellraw @s ["",{"text":"═══════════════════════════════","color":"green"}]
tellraw @s ""
tellraw @s ["",{"text":"  Seeds obey the Bloomweaver's call.","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  Crops flourish, harvests multiply, and","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  fields replant themselves in an instant.","color":"#AAAAAA"}]
tellraw @s ""
tellraw @s ["",{"text":"  Abilities:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"   ✦ ","color":"green"},{"text":"Growth Aura","color":"white"},{"text":" — Crops in 64-block","color":"gray"}]
tellraw @s ["",{"text":"     radius grow faster while held","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"green"},{"text":"Harvest Storm","color":"white"},{"text":" — Break mature","color":"gray"}]
tellraw @s ["",{"text":"     crops in a large area instantly","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"green"},{"text":"Auto-Replant","color":"white"},{"text":" — Harvested crops","color":"gray"}]
tellraw @s ["",{"text":"     replant seeds automatically","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"green"},{"text":"Bonus Yield","color":"white"},{"text":" — Extra crop drops","color":"gray"}]
tellraw @s ["",{"text":"     based on affinity level","color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":"  Mastery — ","color":"light_purple"},{"text":"Garden of Eden","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"   Sneak to instantly grow and harvest","color":"#AAAAAA"}]
tellraw @s ["",{"text":"   all crops in a 15-block radius. 60s CD.","color":"#AAAAAA"}]
tellraw @s ""
execute if score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"  CLASS AFFINITY","color":"green","bold":true}]
execute if score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"   Stage: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffs_gs"},"color":"green","bold":true},{"text":"/7","color":"gray"},{"text":"   Boost: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffb_gs"},"color":"green","bold":true},{"text":"%","color":"green"}]
execute if score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"   XP: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caff_gs"},"color":"green"},{"text":" / 30,000,000","color":"dark_gray"}]
execute if score @s ec.caff_gs matches 1.. run tellraw @s ""
execute if score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"  Affinity Bonuses:","color":"yellow"}]
execute if score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_gs"},"color":"green"},{"text":"% faster crop tick speed","color":"gray"}]
execute if score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_gs"},"color":"green"},{"text":"% more crop yield","color":"gray"}]
execute if score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"   +1% crate chance per 10% boost","color":"dark_gray"}]
execute if score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"   Max: 20% permanent (Spirit mastery)","color":"dark_gray"}]
execute unless score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"🔒 ","color":"dark_gray"},{"text":"Obtain the Bloomweaver to unlock","color":"dark_gray","italic":true}]
execute unless score @s ec.caff_gs matches 1.. run tellraw @s ["",{"text":"     affinity tracking.","color":"dark_gray","italic":true}]
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"green"}]
