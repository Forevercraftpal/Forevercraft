# Stonestrike — Earthsong Spirit Pickaxe
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"gold"}]
tellraw @s ["",{"text":"  ⛏ ","color":"gold"},{"text":"Stonestrike","color":"gold","bold":true},{"text":" — Earthsong","color":"gray"}]
tellraw @s ["",{"text":"  Spirit Pickaxe","color":"gray"}]
tellraw @s ["",{"text":"═══════════════════════════════","color":"gold"}]
tellraw @s ""
tellraw @s ["",{"text":"  A master miner's path. The Earthsong","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  resonates with deep stone, granting","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  power to shatter entire veins at once.","color":"#AAAAAA"}]
tellraw @s ""
tellraw @s ["",{"text":"  Abilities:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"   ✦ ","color":"gold"},{"text":"Vein Mining","color":"white"},{"text":" — Mine connected ore","color":"gray"}]
tellraw @s ["",{"text":"     veins instantly (up to 512 blocks)","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"gold"},{"text":"Area Mine","color":"white"},{"text":" — Clear 5x5 stone","color":"gray"}]
tellraw @s ["",{"text":"     while standing (sneak for vein)","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"gold"},{"text":"Auto-Smelt","color":"white"},{"text":" — Raw ores transform","color":"gray"}]
tellraw @s ["",{"text":"     into ingots on pickup","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"gold"},{"text":"Item Magnet","color":"white"},{"text":" — Pulls drops from","color":"gray"}]
tellraw @s ["",{"text":"     16 blocks away","color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":"  Mastery — ","color":"light_purple"},{"text":"Quarry Pulse","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"   Sneak to blast a 9x9x9 cube, mining","color":"#AAAAAA"}]
tellraw @s ["",{"text":"   all stone and ore. 60s cooldown.","color":"#AAAAAA"}]
tellraw @s ""
# Affinity: only show if player has any Stonestrike XP
execute if score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"  CLASS AFFINITY","color":"gold","bold":true}]
execute if score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"   Stage: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffs_ss"},"color":"gold","bold":true},{"text":"/7","color":"gray"},{"text":"   Boost: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffb_ss"},"color":"green","bold":true},{"text":"%","color":"green"}]
execute if score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"   XP: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caff_ss"},"color":"gold"},{"text":" / 30,000,000","color":"dark_gray"}]
execute if score @s ec.caff_ss matches 1.. run tellraw @s ""
execute if score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"  Affinity Bonuses:","color":"yellow"}]
execute if score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_ss"},"color":"green"},{"text":"% mining speed","color":"gray"}]
execute if score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_ss"},"color":"green"},{"text":"% ore yield bonus","color":"gray"}]
execute if score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"   +1% crate chance per 10% boost","color":"dark_gray"}]
execute if score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"   Max: 20% permanent (Spirit mastery)","color":"dark_gray"}]
# Locked message if no XP
execute unless score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"🔒 ","color":"dark_gray"},{"text":"Obtain the Earthsong to unlock","color":"dark_gray","italic":true}]
execute unless score @s ec.caff_ss matches 1.. run tellraw @s ["",{"text":"     affinity tracking.","color":"dark_gray","italic":true}]
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"gold"}]
