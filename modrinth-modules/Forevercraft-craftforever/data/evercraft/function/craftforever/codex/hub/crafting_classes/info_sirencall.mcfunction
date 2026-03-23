# Sirencall — Tidecaller's Line Spirit Fishing Rod
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"aqua"}]
tellraw @s ["",{"text":"  \u2766 ","color":"aqua"},{"text":"Sirencall","color":"aqua","bold":true},{"text":" — Tidecaller's","color":"gray"}]
tellraw @s ["",{"text":"  Line Spirit Rod","color":"gray"}]
tellraw @s ["",{"text":"═══════════════════════════════","color":"aqua"}]
tellraw @s ""
tellraw @s ["",{"text":"  The tides yield their bounty willingly","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  to one who carries the Tidecaller's Line.","color":"#AAAAAA"}]
tellraw @s ["",{"text":"  No cast is wasted, no catch is junk.","color":"#AAAAAA"}]
tellraw @s ""
tellraw @s ["",{"text":"  Abilities:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"   ✦ ","color":"aqua"},{"text":"No Junk Catches","color":"white"},{"text":" — Only fish","color":"gray"}]
tellraw @s ["",{"text":"     and treasure from every cast","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"aqua"},{"text":"Double Fish","color":"white"},{"text":" — Chance for double","color":"gray"}]
tellraw @s ["",{"text":"     drops on every catch","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"aqua"},{"text":"Luck V","color":"white"},{"text":" — Massively increased","color":"gray"}]
tellraw @s ["",{"text":"     treasure rates + Conduit Power","color":"gray"}]
tellraw @s ["",{"text":"   ✦ ","color":"aqua"},{"text":"Water Breathing","color":"white"},{"text":" — Breathe","color":"gray"}]
tellraw @s ["",{"text":"     underwater while held","color":"gray"}]
tellraw @s ""
tellraw @s ["",{"text":"  Mastery — ","color":"light_purple"},{"text":"Maelstrom","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"   Sneak to summon a whirlpool that auto-","color":"#AAAAAA"}]
tellraw @s ["",{"text":"   catches fish for 20s. 60s cooldown.","color":"#AAAAAA"}]
tellraw @s ""
execute if score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"  CLASS AFFINITY","color":"aqua","bold":true}]
execute if score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"   Stage: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffs_sc"},"color":"aqua","bold":true},{"text":"/7","color":"gray"},{"text":"   Boost: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caffb_sc"},"color":"green","bold":true},{"text":"%","color":"green"}]
execute if score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"   XP: ","color":"gray"},{"score":{"name":"@s","objective":"ec.caff_sc"},"color":"aqua"},{"text":" / 30,000,000","color":"dark_gray"}]
execute if score @s ec.caff_sc matches 1.. run tellraw @s ""
execute if score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"  Affinity Bonuses:","color":"yellow"}]
execute if score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_sc"},"color":"green"},{"text":"% faster catch speed","color":"gray"}]
execute if score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"   +","color":"green"},{"score":{"name":"@s","objective":"ec.caffb_sc"},"color":"green"},{"text":"% Luck of the Sea","color":"gray"}]
execute if score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"   +1% crate chance per 10% boost","color":"dark_gray"}]
execute if score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"   Max: 20% permanent (Spirit mastery)","color":"dark_gray"}]
execute unless score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"  ","color":"gray"},{"text":"🔒 ","color":"dark_gray"},{"text":"Obtain the Tidecaller's Line to","color":"dark_gray","italic":true}]
execute unless score @s ec.caff_sc matches 1.. run tellraw @s ["",{"text":"     unlock affinity tracking.","color":"dark_gray","italic":true}]
tellraw @s ""
tellraw @s ["",{"text":"═══════════════════════════════","color":"aqua"}]
