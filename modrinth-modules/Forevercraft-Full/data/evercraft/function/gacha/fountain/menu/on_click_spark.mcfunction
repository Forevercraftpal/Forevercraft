# Fountain menu — Lucid Claim clicked
# Runs as @s = interaction entity

data remove entity @s interaction

# Find session-matched player and open Lucid Claim GUI
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=ec.InFountain,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:gacha/spark/gui/open
