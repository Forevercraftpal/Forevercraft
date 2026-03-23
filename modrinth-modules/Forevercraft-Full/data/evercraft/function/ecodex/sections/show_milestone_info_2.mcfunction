# Show Milestone Info — 2 Stages (Macro)
# Run as: interaction entity (from attack detection)
# Args: name, desc, score, th1-th2, t1-t2, tc1-tc2

# Clear attack data
data remove entity @s attack

# Bridge to player and show info
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
$execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run tellraw @s [{"text":"\n\u2726 ","color":"gold"},{"text":"$(name)","color":"yellow","bold":true},{"text":" \u2726","color":"gold"},{"text":"\n  ","color":"gray"},{"text":"$(desc)","color":"white","italic":true},{"text":"\n  Progress: ","color":"gray"},{"score":{"name":"@s","objective":"$(score)"},"color":"white","bold":true},{"text":"\n  Stage 1: ","color":"gray"},{"text":"$(th1)","color":"aqua"},{"text":" (","color":"dark_gray"},{"text":"$(t1) Crate","color":"$(tc1)"},{"text":") ","color":"dark_gray"},{"text":"| Stage 2: ","color":"gray"},{"text":"$(th2)","color":"aqua"},{"text":" (","color":"dark_gray"},{"text":"$(t2) Crate","color":"$(tc2)"},{"text":")","color":"dark_gray"}]
