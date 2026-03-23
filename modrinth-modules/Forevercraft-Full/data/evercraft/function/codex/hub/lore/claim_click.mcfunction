# Lore Discovery — Claim Rewards Click
# Bridges to section 15 (ecodex lore claims with 9-page pagination)
# Run as: interaction entity

data remove entity @s interaction
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/enter_section_inner {section:15}
