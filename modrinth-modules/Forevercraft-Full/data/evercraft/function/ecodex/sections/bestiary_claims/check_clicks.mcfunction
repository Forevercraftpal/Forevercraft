# Ecodex — Bestiary Claims Click Detection (Section 13)
# Run as: player with menu open

# Auto-refresh every 60 ticks
execute store result score #ms_refresh ec.temp run time query gametime
scoreboard players operation #ms_refresh ec.temp %= #60 ec.const
execute if score #ms_refresh ec.temp matches 0 run function evercraft:ecodex/sections/bestiary_claims/refresh

# Claim All click
execute as @e[type=interaction,tag=Ec.BstClaimClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/sections/bestiary_claim_all_click
