# Artisan Tome — Show quest status with progress (macro function)
$tellraw @s [{"text":"  "},{"text":"Quest ","color":"gray"},{"text":"$(part)","color":"white"},{"text":" of 100","color":"gray"}]
function evercraft:craftforever/spirit_tools/tome/quests/display_status with storage evercraft:tq_temp
