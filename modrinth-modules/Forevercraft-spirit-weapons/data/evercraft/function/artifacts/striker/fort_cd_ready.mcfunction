# Striker — Sentinel Fortress Cooldown Ready
# OPT: Consolidates 2 @a scans into 1
# Run as: player with ec.sk_sentinel + ec.sk_fort_cd=0, at player

playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.8
scoreboard players set @s ec.sk_fort_cd -1
