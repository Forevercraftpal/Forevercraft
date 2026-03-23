# ============================================================
# Artifact Bounty Board — Append Bounty From Pool (Macro)
# ============================================================
$data modify storage eden:database bounty_board.bounties append from storage eden:database bounty_board.pool[$(index)]
