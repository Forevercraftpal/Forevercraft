# Striker — Ground Slam Cooldown Ready
# OPT: Consolidates 2 @a scans into 1
# Run as: player with ec.sk_active + ec.sk_cd=0, at player

playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.8
scoreboard players set @s ec.sk_cd -1
