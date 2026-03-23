# Team Duel — Partner B Confirmed (runs as partner_b)
# All 4 players ready — start the duel

execute unless entity @s[tag=duel.partner_b] run return 0

# All 4 confirmed — start team duel
tellraw @a [{text:"[Forevercraft] ",color:"gold"},{text:"Team Duel: ",color:"gold",bold:true},{selector:"@a[tag=duel.team_challenger]",color:"aqua"},{text:" & ",color:"yellow"},{selector:"@a[tag=duel.partner_a]",color:"aqua"},{text:" vs ",color:"red"},{selector:"@a[tag=duel.team_opponent_confirmed]",color:"light_purple"},{text:" & ",color:"yellow"},{selector:"@a[tag=duel.partner_b]",color:"light_purple"}]

# Start the duel
function evercraft:duel/team/start
