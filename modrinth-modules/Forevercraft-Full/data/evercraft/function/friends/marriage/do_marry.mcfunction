# Marriage — Macro: set married_to on both players' storage
# Macro args: accepter_uuid3, proposer_uuid3
$data modify storage evercraft:friends "u$(accepter_uuid3)".married_to set value $(proposer_uuid3)
$data modify storage evercraft:friends "u$(proposer_uuid3)".married_to set value $(accepter_uuid3)

# Realm News daily counter
scoreboard players add #news_marriages ec.var 1

# Realm milestone: marriage
function evercraft:milestones/increment/marriage
