# H2H Competition — Invite Timeout
# Runs as target whose invite expired

scoreboard players set @s ec.h2h_inv 0
scoreboard players set @s ec.h2h_inv_cd 0
tag @s remove h2h.pending_target

# Clean up challenger tag
tag @a[tag=h2h.challenger] remove h2h.challenger

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Competition challenge expired.",color:"gray"}]
