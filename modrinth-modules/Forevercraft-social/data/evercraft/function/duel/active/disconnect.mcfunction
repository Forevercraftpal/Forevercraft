# Duel — Disconnect Handler (fewer than 2 duelists online)

# If 1 duelist remains, they win by default
execute if score #duelist_count ec.temp matches 1 as @a[tag=ec.duel_active_tag] run tag @s add duel.winner
execute if score #duelist_count ec.temp matches 1 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Opponent disconnected — duel won by default!",color:"yellow"}]

# If 0 duelists remain (both disconnected), just clean up
execute if score #duelist_count ec.temp matches 0 run tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Both duelists disconnected — duel cancelled.",color:"gray"}]

# Resolve (winner handling will only fire if someone has the tag)
function evercraft:duel/end/resolve
