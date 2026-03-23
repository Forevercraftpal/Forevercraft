# Artisan Forge — Deposit Catalyst
data remove entity @s interaction
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @a[tag=CF.InMenu,distance=..7] if score @s adv.gui_session = #gui_check ec.temp at @s run function evercraft:craftforever/forging/gui/do_deposit_catalyst
