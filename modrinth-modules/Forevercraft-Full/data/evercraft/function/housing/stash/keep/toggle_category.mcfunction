# ============================================================
# Stash Settings — Toggle keep for a category (macro)
# Run as: the interaction entity
# Args: category, title, cat_color
# ============================================================

# Clear interaction
data remove entity @s interaction

# Find the player
$execute as @p[tag=HS.InSettings,distance=..5] run function evercraft:housing/stash/keep/do_toggle {category:"$(category)",title:"$(title)",cat_color:"$(cat_color)"}
