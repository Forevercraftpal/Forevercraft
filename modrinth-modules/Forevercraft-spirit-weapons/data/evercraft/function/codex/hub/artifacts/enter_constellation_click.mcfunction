# Artifact Collection — Constellation Clicked (Macro)
# Macro arg: cn (1-10)
# Run as the interaction entity
data remove entity @s interaction
# Session-based ownership check
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
$execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp at @s facing entity @e[tag=Adv.MenuAnchor,limit=1,sort=nearest] feet run function evercraft:codex/hub/artifacts/enter_constellation {cn:$(cn)}
