# Ecodex — Bestiary Claim All Click Bridge
# Run as: interaction entity
data remove entity @s interaction
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:claim/bulk_claim_bestiary
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:ecodex/sections/bestiary_claims/refresh
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run scoreboard players set @s adv.gui_cd 5
