# Check if village already discovered, if not add tag
# Returns 0 (fail) if already discovered, 1 if new

$execute if entity @s[tag=jn.v_$(vid)] run return fail
$tag @s add jn.v_$(vid)
return 1
