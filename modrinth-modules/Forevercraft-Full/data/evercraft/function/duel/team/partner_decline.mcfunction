# Team Duel — Partner B Declined
execute unless entity @s[tag=duel.partner_b] run return 0

tellraw @a[tag=duel.team_opponent_confirmed] [{text:"[Forevercraft] ",color:"gold"},{selector:"@s",color:"red"},{text:" declined to join. Team duel cancelled.",color:"gray"}]
tellraw @a[tag=duel.team_challenger] [{text:"[Forevercraft] ",color:"gold"},{text:"Team duel cancelled — opponent's partner declined.",color:"gray"}]

function evercraft:duel/team/cleanup_tags
