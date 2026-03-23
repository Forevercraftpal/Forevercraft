# Show Milestone Info — 1 Stage (Macro)
# Run as: interaction entity (from attack detection)
# Args: name, desc, score, th1, t1, tc1

# Clear attack data
data remove entity @s attack

# Bridge to player and show info
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
$execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run tellraw @s [{"text":"\n\u2726 ","color":"gold"},{"text":"$(name)","color":"yellow","bold":true},{"text":" \u2726","color":"gold"},{"text":"\n  ","color":"gray"},{"text":"$(desc)","color":"white","italic":true},{"text":"\n  Progress: ","color":"gray"},{"score":{"name":"@s","objective":"$(score)"},"color":"white","bold":true},{"text":"\n  Goal: ","color":"gray"},{"text":"$(th1)","color":"aqua"},{"text":" (","color":"dark_gray"},{"text":"$(t1) Crate","color":"$(tc1)"},{"text":")","color":"dark_gray"}]
