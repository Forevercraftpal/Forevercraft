$data remove entity @s attack
$scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
$execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run tellraw @s [{"text":"\n\u2726 ","color":"gold"},{"text":"$(name)","color":"yellow","bold":true},{"text":"\n  Found in: ","color":"gray"},{"text":"$(biome)","color":"green","bold":true},{"text":"\n  Pieces: ","color":"gray"},{"score":{"name":"@s","objective":"$(score)"},"color":"white","bold":true},{"text":" / $(pieces)","color":"aqua"}]
