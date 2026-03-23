# === ETERNAL CODEX — COMBINE WITH PORTAL DIAL → PHOENIX CODEX ===
# Run as: interaction entity (from hub click)

data remove entity @s interaction
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:ecodex/do_combine_dial_inner
