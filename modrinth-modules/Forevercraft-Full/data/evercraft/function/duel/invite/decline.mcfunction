# Duel Invite — Decline (runs as target who clicked [Decline] or auto-expired)

scoreboard players set @s ec.duel_inv 0
scoreboard players set @s ec.duel_inv_cd 0
tag @s remove duel.pending_target
scoreboard players set @s ec.duel 0

# Clean up challenger tag
tag @a[tag=duel.challenger] remove duel.challenger

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You declined the duel.",color:"gray"}]

# Notify all nearby players
tellraw @a[distance=0..64] [{text:"[Forevercraft] ",color:"gold"},{selector:"@s",color:"aqua"},{text:" declined the duel challenge.",color:"gray"}]
