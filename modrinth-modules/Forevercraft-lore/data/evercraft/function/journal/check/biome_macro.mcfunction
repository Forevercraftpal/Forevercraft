# Check if current biome is already discovered (macro dispatch)
# OPT: Replaces 25 biome checks with 1 macro lookup
# Called with: {id:<biome_id>}
$execute unless entity @s[tag=jn.b$(id)] run function evercraft:journal/record/biome_discovered
