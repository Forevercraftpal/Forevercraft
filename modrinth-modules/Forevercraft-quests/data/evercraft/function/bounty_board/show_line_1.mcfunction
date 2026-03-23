# ============================================================
# Artifact Bounty Board — Show Line 1 (Macro)
# ============================================================
$execute if score @s ec.abb_claim_1 matches 1 run return run tellraw @s ["",{"text":"  2. ","color":"gray"},{"text":"\u2713 $(name)","color":"dark_gray","strikethrough":true},{"text":" (Claimed)","color":"dark_green"}]
$tellraw @s ["",{"text":"  2. ","color":"gray"},{"text":"\u2605 ","color":"$(color)"},{"text":"$(name)","color":"$(color)"},{"text":" \u2605","color":"$(color)"},{"text":" \u2014 ","color":"dark_gray"},{"text":"$(coins) Coins","color":"yellow"},{"text":" + Bonus Item","color":"green"}]
