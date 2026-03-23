# Title Click — Claim Per-Category Milestones (detail pages 9-14)
# Run as the interaction entity
# Macro arg: cat (origins/social/guild/adventure/combat/mastery)

data remove entity @s interaction

scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session

$execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:claim/bulk_claim_cat_$(cat)
