# H2H Competition — Decline
# Runs as the target player

execute unless entity @s[tag=h2h.pending_target] run return 0

scoreboard players set @s ec.h2h_inv 0
scoreboard players set @s ec.h2h_inv_cd 0
tag @s remove h2h.pending_target

# Notify challenger
execute as @a[tag=h2h.challenger] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[tag=h2h.pending_target]",color:"red"},{text:" declined your competition challenge.",color:"gray"}]

# Clean up challenger tag
tag @a[tag=h2h.challenger] remove h2h.challenger

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Competition challenge declined.",color:"gray"}]
