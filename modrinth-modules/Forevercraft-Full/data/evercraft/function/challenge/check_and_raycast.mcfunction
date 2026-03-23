# Challenge System — Determine book type and run raycast
# Runs as sneaking player, at player position
# Pre-filtered to sneaking, non-dueling players in tick.mcfunction

# Determine which book the player is holding
execute if predicate evercraft:challenge/sneaking_with_codex run tag @s add challenge.mode_duel
execute unless entity @s[tag=challenge.mode_duel] if predicate evercraft:challenge/sneaking_with_craftforever run tag @s add challenge.mode_comp
execute unless entity @s[tag=challenge.mode_duel] unless entity @s[tag=challenge.mode_comp] if predicate evercraft:challenge/sneaking_with_catalogue run tag @s add challenge.mode_pet

# Only proceed if holding a challenge book
execute unless entity @s[tag=challenge.mode_duel] unless entity @s[tag=challenge.mode_comp] unless entity @s[tag=challenge.mode_pet] run return 0

# Run shared raycast
function evercraft:challenge/raycast
