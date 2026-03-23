data remove entity @s interaction
$scoreboard players set #cf_clicked ec.cf_temp $(color)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @a[tag=CF.Forging,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run function evercraft:craftforever/forging/minigame/phase2_hammer/check_match
