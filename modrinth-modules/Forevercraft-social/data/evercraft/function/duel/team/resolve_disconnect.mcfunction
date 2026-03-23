# Team Duel — Resolve Disconnect
# Not enough players remaining

tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Team duel ended — not enough players remaining.",color:"gray"}]

# Restore any eliminated spectators
execute as @a[tag=duel.eliminated] run gamemode survival @s

# No winner/loser rewards on disconnect
function evercraft:duel/team/full_cleanup
