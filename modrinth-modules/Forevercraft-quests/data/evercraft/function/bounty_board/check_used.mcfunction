# ============================================================
# Artifact Bounty Board — Check If Index Already Used (Macro)
# Sets #abb_dup ec.abb_temp to 1 if index was already rolled
# ============================================================
$execute if data storage eden:database bounty_board.used{i$(index):1b} run scoreboard players set #abb_dup ec.abb_temp 1
