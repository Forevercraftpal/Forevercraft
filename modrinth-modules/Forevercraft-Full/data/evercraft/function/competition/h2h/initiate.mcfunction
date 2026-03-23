# H2H Competition — Initiate (runs as challenger, target = duel.ray_target)
# Craftforever book + sneak + look at player

# Block if already in a duel or h2h
execute if score @s ec.duel_active matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are already in a duel!",color:"red"}]
execute if entity @s[tag=h2h.participant] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are already in a competition!",color:"red"}]

# Block if in restricted area
execute if entity @s[tag=dr.in_realm] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Cannot challenge while in the Dreaming Realm!",color:"red"}]
execute if entity @s[tag=dg.player] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Cannot challenge while in a dungeon!",color:"red"}]

# Block if in menu
execute if entity @s[tag=Adv.InMenu] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]

# Block if another h2h is active
execute if score #h2h_active ec.var matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"A head-to-head competition is already in progress!",color:"red"}]

# Block if pending invite exists
execute if entity @a[tag=h2h.pending_target] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"A competition invite is already pending!",color:"red"}]

# Tag as challenger and send invite
tag @s add h2h.challenger
execute as @a[tag=duel.ray_target,limit=1] run function evercraft:competition/h2h/receive
