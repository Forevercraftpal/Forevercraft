# Duel Invite — Timeout (runs as target whose invite expired)

scoreboard players set @s ec.duel_inv 0
scoreboard players set @s ec.duel_inv_cd 0
tag @s remove duel.pending_target

# Clean up challenger tag
tag @a[tag=duel.challenger] remove duel.challenger

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Duel invitation expired.",color:"gray"}]
