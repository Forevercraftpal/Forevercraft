# Team Duel — Partner B Confirmation Timeout
# Runs as partner_b whose invite timer expired

tellraw @a[tag=duel.team_opponent_confirmed] [{text:"[Forevercraft] ",color:"gold"},{text:"Partner confirmation timed out. Team duel cancelled.",color:"gray"}]
tellraw @a[tag=duel.team_challenger] [{text:"[Forevercraft] ",color:"gold"},{text:"Team duel cancelled — partner did not confirm in time.",color:"gray"}]
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Team duel partner invite expired.",color:"gray"}]

function evercraft:duel/team/cleanup_tags
