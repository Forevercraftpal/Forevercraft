# Guild — Remove member from storage (by uuid3 match)
# $(id) = guild ID, $(uuid3) = player companion.id
# Uses data remove with index — find matching entry first
$data remove storage evercraft:guild guilds."$(id)".members[{uuid3:$(uuid3)}]
