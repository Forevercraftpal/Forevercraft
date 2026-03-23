# ============================================================
# Artifact Bounty Board — On Click
# Run as @e[interaction,tag=ABB.Click] at @s
# ============================================================

# Clear interaction data immediately
data remove entity @s interaction

# Dispatch to nearest player within 4 blocks
execute as @p[distance=..4] run function evercraft:bounty_board/handle_click
