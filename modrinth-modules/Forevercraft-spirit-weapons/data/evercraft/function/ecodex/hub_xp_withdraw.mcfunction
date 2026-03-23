# Hub XP Withdraw — Run as interaction entity, bridges to player
data remove entity @s interaction
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:tome/withdraw
