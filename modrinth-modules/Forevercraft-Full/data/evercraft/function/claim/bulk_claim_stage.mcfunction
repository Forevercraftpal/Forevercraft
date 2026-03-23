# === SILENT SINGLE STAGE CLAIM ===
# Macro: {system:"personal", id:"p1_1", tier:"uncommon", coins:5}
# Grants advancement + gives crate + coins without individual feedback
# Used by bulk_claim_personal_stages / bulk_claim_craftforever
# Run as: player

$advancement grant @s only evercraft:claim/$(system)/$(id)
$function evercraft:util/give_quest_crate {tier:"$(tier)"}
$scoreboard players add @s ec.coins $(coins)
scoreboard players add @s ec.claim_cnt 1
