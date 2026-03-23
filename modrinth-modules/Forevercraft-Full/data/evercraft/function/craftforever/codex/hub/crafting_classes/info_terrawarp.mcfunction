# Terrawarp — Dustwalker Spirit Shovel
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"#C2B280"}]
tellraw @s ["",{"text":"  \u2692 ","color":"#C2B280"},{"text":"Terrawarp","color":"#C2B280","bold":true},{"text":" — Dustwalker","color":"gray"}]
tellraw @s ["",{"text":"  Spirit Shovel","color":"gray"}]
tellraw @s ["",{"text":"═══════════════════════════════","color":"#C2B280"}]
tellraw @s ""
tellraw @s ["",{"text":"  The earth parts before the Dustwalker.","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  Reshape terrain, carve paths through","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  mountains, and leave speed trails.","color":"#AAAAAA"}]
tellraw @s ""
tellraw @s ["",{"text":"  Abilities:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"   ✦ ","color":"#C2B280"},{"text":"5x5 Excavation","color":"white"},{"text":" — Clear huge","color":"gray"}]
tellraw @s ["",{"text":"     areas of soil while standing","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"#C2B280"},{"text":"Column Bore","color":"white"},{"text":" — Sneak to drill","color":"gray"}]
tellraw @s ["",{"text":"     straight down 32 blocks","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"#C2B280"},{"text":"Speed Paths","color":"white"},{"text":" — Trails behind you","color":"gray"}]
tellraw @s ["",{"text":"     grant Speed I to all players","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"#C2B280"},{"text":"Item Magnet","color":"white"},{"text":" — Pulls drops from","color":"gray"}]
tellraw @s ["",{"text":"     16 blocks away","color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":"  Mastery — ","color":"light_purple"},{"text":"Terraform","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"   Sneak to flatten a 15x15 area to your","color":"#AAAAAA"}]
tellraw @s ["",{"text":"   height. Grass on top, gaps filled. 60s.","color":"#AAAAAA"}]
tellraw @s ""
execute if score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"  CLASS AFFINITY","color":"#C2B280","bold":true}]
execute if score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"   Stage: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffs_tw"},"color":"#C2B280","bold":true},{"text":"/7","color":"gray"},{"text":"   Boost: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffb_tw"},"color":"green","bold":true},{"text":"%","color":"green"}]
execute if score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"   XP: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caff_tw"},"color":"#C2B280"},{"text":" / 30,000,000","color":"dark_gray"}]
execute if score @s ec.caff_tw matches 1.. run tellraw @s ""
execute if score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"  Affinity Bonuses:","color":"yellow"}]
execute if score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_tw"},"color":"green"},{"text":"% excavation speed","color":"gray"}]
execute if score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_tw"},"color":"green"},{"text":"% extra block drops","color":"gray"}]
execute if score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"   +1% crate chance per 10% boost","color":"dark_gray"}]
execute if score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"   Max: 20% permanent (Spirit mastery)","color":"dark_gray"}]
execute unless score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"🔒 ","color":"dark_gray"},{"text":"Obtain the Dustwalker to unlock","color":"dark_gray","italic":true}]
execute unless score @s ec.caff_tw matches 1.. run tellraw @s ["",{"text":"     affinity tracking.","color":"dark_gray","italic":true}]
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"#C2B280"}]
