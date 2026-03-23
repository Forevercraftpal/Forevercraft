# Craftforever Milestones — Load
# Creates new tracking scoreboards needed by craftforever milestones

# Trade trials completed (incremented in craftforever/trials/complete)
scoreboard objectives add ec.tt_completed dummy "Trials Completed"

# Total artisan forges (incremented in craftforever/grand_forge/complete)
scoreboard objectives add ec.cf_total_forges dummy "Total Forges"

# Spirit tools crafted — count of tier-ups (incremented in spirit_tools/progression/tier_up)
scoreboard objectives add ec.st_tools_made dummy "Spirit Tool Tier-Ups"

# Pantry items stored (incremented in pantry/menu/try_store)
scoreboard objectives add ec.pantry_stored dummy "Pantry Items Stored"

# Bitfield bit-count temp scores (used by ecodex refresh for c10/c11 display)
scoreboard objectives add ec.cf_mat_bits dummy "Material Bit Count"
scoreboard objectives add ec.cf_node_bits dummy "Node Bit Count"

# Claim counters already defined in claim/load.mcfunction (ec.claim_prs, ec.claim_cft)
