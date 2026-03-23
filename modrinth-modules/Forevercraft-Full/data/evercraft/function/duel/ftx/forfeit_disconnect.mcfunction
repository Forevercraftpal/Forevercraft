# First-to-X — Forfeit/Disconnect
# Not enough players online

# If one player remains, they win
execute if entity @a[tag=ec.duel_active_tag,limit=1] as @a[tag=ec.duel_active_tag,limit=1] run tag @s add duel.winner
execute if entity @a[tag=duel.winner] run function evercraft:duel/end/winner
execute if entity @a[tag=duel.winner] run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[tag=duel.winner]",color:"green"},{text:" wins by forfeit!",color:"yellow"}]

# If nobody remains
execute unless entity @a[tag=ec.duel_active_tag] run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"First-to-X duel ended — both players disconnected.",color:"gray"}]

scoreboard players add #news_duels ec.var 1
function evercraft:duel/ftx/cleanup
