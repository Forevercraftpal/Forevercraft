$tellraw @s [{"text":"  "},{"text":"$(name)","color":"gold","bold":true}]
$tellraw @s [{"text":"  "},{"text":"$(desc)","color":"white"}]
tellraw @s [{"text":"  "},{"text":"Progress: ","color":"gray"},{"score":{"name":"@s","objective":"ec.tq_progress"},"color":"yellow","bold":true},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"ec.tq_target"},"color":"yellow","bold":true}]
tellraw @s [{"text":"  -----------------","color":"dark_gray"}]
