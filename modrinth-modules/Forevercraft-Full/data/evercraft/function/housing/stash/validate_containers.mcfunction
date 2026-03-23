# ============================================================
# Stash — Validate labeled containers
# Run as: each HS.Stash marker, at its position
# Called from housing/tick every 2 seconds
# Removes marker + display if container block is missing
# ============================================================
execute unless block ~ ~ ~ #evercraft:stash_containers run kill @e[type=text_display,tag=HS.StashDisplay,distance=..1.5]
execute unless block ~ ~ ~ #evercraft:stash_containers run kill @s
