# Title Click — Claim All Craftforever Milestones
# Run as the interaction entity

data remove entity @s interaction

scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:claim/bulk_claim_craftforever
