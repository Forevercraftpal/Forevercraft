# Spirit Tome — Celebration display (macro function)
$title @s subtitle {"text":"$(name)","color":"gold"}
title @s title [{"text":"Quest ","color":"aqua"},{"score":{"name":"@s","objective":"ec.sq_part"},"color":"white"},{"text":" Complete!","color":"aqua"}]
$tellraw @s [{"text":""},{"text":"  [Spirit Tome] ","color":"aqua","bold":true},{"text":"Quest complete: ","color":"gray"},{"text":"$(name)","color":"gold","bold":true}]
tellraw @s [{text:"  "},{"text":"You gained ","color":"green"},{"score":{"name":"@s","objective":"ec.sq_part"},"color":"green","bold":true},{"text":" XP levels!","color":"green"}]
