# === SILENT SINGLE MILESTONE CLAIM ===
# Macro: {id:"X", tier:"Y"}
# Grants advancement + gives crate without individual feedback
# Used by bulk_claim_personal to avoid 30+ sound/message spam
# Run as: player

$execute if entity @s[advancements={evercraft:milestones/claimed/ms_$(id)=true}] run return 0
$execute unless score #rm_done_$(id) ec.var matches 1 run return 0

# Grant claim advancement
$advancement grant @s only evercraft:milestones/claimed/ms_$(id)

# Give crate reward
$function evercraft:util/give_quest_crate {tier:"$(tier)"}

# Increment counter for summary
scoreboard players add @s ec.claim_cnt 1
