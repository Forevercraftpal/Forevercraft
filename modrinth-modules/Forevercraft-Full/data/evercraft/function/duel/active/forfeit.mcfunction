# Duel — Forfeit (runs as the player who forfeited by going OOB or disconnecting)

tag @s add duel.loser

# Tag the other duelist as winner
execute as @a[tag=ec.duel_active_tag,tag=!duel.loser] run tag @s add duel.winner

# Announce
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{selector:"@s",color:"red"},{text:" forfeited the duel!",color:"yellow"}]

# Resolve
function evercraft:duel/end/resolve
