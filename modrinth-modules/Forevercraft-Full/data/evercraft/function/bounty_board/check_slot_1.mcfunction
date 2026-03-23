# ============================================================
# Artifact Bounty Board — Check Slot 1
# ============================================================
data modify storage eden:database bounty_board.temp.id set from storage eden:database bounty_board.bounties[1].id
function evercraft:bounty_board/match_held with storage eden:database bounty_board.temp
execute if score #abb_matched ec.abb_temp matches 1 run function evercraft:bounty_board/turn_in_1
