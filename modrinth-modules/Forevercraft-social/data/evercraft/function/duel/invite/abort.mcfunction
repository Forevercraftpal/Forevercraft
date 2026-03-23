# Duel Invite — Abort (challenger not found after accept)
# Runs as the target player who accepted but couldn't find challenger

tag @s remove ec.duel_active_tag
tag @s remove duel.pending_target
scoreboard players set @s ec.duel_active 0
scoreboard players set @s ec.duel_mode 0
scoreboard players set @s ec.duel_inv 0
scoreboard players set @s ec.duel_inv_cd 0

# Clean up challenger tag
tag @a[tag=duel.challenger] remove duel.challenger

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Could not find the challenger! Duel cancelled.",color:"red"}]
