# Bestiary — On Kill (Macro)
# Called from mob_crates/drop/kill/<mob>.mcfunction
# Args: {score:"bs.k_blaze", dscore:"bs.d_blaze", threshold:5000, pow:"#pow1", field:"lo", mob:"blaze", smob:"blaze", group:2}
# Run as the player who killed the mob

# Increment kill counter
$scoreboard players add @s $(score) 1

# Track total mob kills for personal milestones
scoreboard players add @s ach.total_kills 1

# Track biome — detect current biome and record it
function evercraft:biome/detect
$data modify storage evercraft:bestiary args.mob set value "$(mob)"
execute if score @s ec.biome_id matches 0..24 run function evercraft:bestiary/track/record_biome with storage evercraft:bestiary args

# Check completion
$function evercraft:bestiary/track/check_complete {score:"$(score)",dscore:"$(dscore)",threshold:$(threshold),pow:"$(pow)",field:"$(field)",mob:"$(mob)"}

# Check bestiary stage progression
$function evercraft:bestiary/stages/check_stage {smob:"$(smob)",group:$(group)}

# Class Affinity XP — regular mob kill
scoreboard players set #delta ec.temp 1200
function evercraft:affinity/grant_current
