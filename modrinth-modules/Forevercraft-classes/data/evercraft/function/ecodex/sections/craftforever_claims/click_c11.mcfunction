# Bitfield Claim Click Bridge — c11: Biome Node Hunter
# Run as: interaction entity

data remove entity @s interaction
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:ecodex/sections/craftforever_claims/claim_c11
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp at @s run function evercraft:ecodex/sections/craftforever_claims/refresh
execute as @a[tag=Adv.InMenu,distance=..10] if score @s adv.gui_session = #gui_click_sess ec.temp run scoreboard players set @s adv.gui_cd 3
