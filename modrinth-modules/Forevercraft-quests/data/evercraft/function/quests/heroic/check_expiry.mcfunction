# ============================================================
# Check Heroic Quest Expiry (run each tick for active heroics)
# ============================================================

# Decrement expiry timer
scoreboard players remove @s ec.quest_expiry 1

# Check for expiry (0 or less)
execute if score @s ec.quest_expiry matches ..0 run function evercraft:quests/heroic/expire
