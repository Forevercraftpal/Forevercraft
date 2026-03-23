# Artisan Tome — Celebration display (macro function)
$title @s subtitle {"text":"$(name)","color":"gold"}
title @s title [{"text":"Quest ","color":"green"},{"score":{"name":"@s","objective":"ec.tq_part"},"color":"white"},{"text":" Complete!","color":"green"}]
$tellraw @s [{"text":""},{"text":"  [Artisan Tome] ","color":"green","bold":true},{"text":"Quest complete: ","color":"gray"},{"text":"$(name)","color":"gold","bold":true}]
tellraw @s [{"text":"  "},{"text":"You gained ","color":"green"},{"score":{"name":"@s","objective":"ec.tq_part"},"color":"green","bold":true},{"text":" XP levels!","color":"green"}]
