# ============================================================
# Artifact Bounty Board — Handle Click
# Run as player
# Checks held item against 3 bounty slots, or shows board
# ============================================================

# Ensure bounties are generated for today
function evercraft:bounty_board/generate_bounties

# If not holding an artifact, just show the board
execute unless items entity @s weapon.mainhand *[custom_data~{is_artifact:1b}] run return run function evercraft:bounty_board/show_bounties

# Player IS holding an artifact — try matching each bounty slot
scoreboard players set #abb_matched ec.abb_temp 0

# Slot 0 (only if unclaimed)
execute if score @s ec.abb_claim_0 matches 0 run function evercraft:bounty_board/check_slot_0

# Slot 1 (only if slot 0 didn't match AND unclaimed)
execute if score #abb_matched ec.abb_temp matches 0 if score @s ec.abb_claim_1 matches 0 run function evercraft:bounty_board/check_slot_1

# Slot 2
execute if score #abb_matched ec.abb_temp matches 0 if score @s ec.abb_claim_2 matches 0 run function evercraft:bounty_board/check_slot_2

# No match? Show board with what's still available
execute if score #abb_matched ec.abb_temp matches 0 run function evercraft:bounty_board/show_bounties
