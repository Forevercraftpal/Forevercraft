# Beastlord — Ownership check (reusable)
# Runs as a tamed animal (wolf/cat/parrot)
# Tags self bl.owned if owner has bl.owner tag
# Caller MUST set bl.owner on the player before calling

execute on owner unless entity @s[tag=bl.owner] run return 0
tag @s add bl.owned
