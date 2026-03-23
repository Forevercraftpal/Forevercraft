# ============================================================
# Artifact Bounty Board — Daily Reset
# Called from quests/reset/daily.mcfunction each morning
# ============================================================

# Reset all player claim flags
scoreboard players set @a ec.abb_claim_0 0
scoreboard players set @a ec.abb_claim_1 0
scoreboard players set @a ec.abb_claim_2 0

# Force regenerate bounties for the new day
data modify storage eden:database bounty_board.bounty_day set value -1
function evercraft:bounty_board/generate_bounties
