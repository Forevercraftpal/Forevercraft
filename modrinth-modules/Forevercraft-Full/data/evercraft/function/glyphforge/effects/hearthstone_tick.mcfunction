# Glyphforge — Hearthstone Glyph Pet Warp Strike (1s tick)
# OPT: Consolidates 3 @a scans into 1
# Run as: player with ec.rf_active + hearthstone weapon, at player

scoreboard players remove @s rf.warp_cd 1
execute if score @s rf.warp_cd matches ..0 run function evercraft:housing/pet_warp/strike_glyph
execute if score @s rf.warp_cd matches ..0 run scoreboard players set @s rf.warp_cd 12
