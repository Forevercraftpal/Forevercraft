# ============================================================
# Laborers — Hire button clicked (macro)
# Run as: the interaction entity, at its position
# Args: type, type_tag, display_name, cost, rank_req, profession, color
# ============================================================

# Clear interaction data
data remove entity @s interaction

# Run the hire logic as the nearest player with the laborer menu open
$execute as @p[tag=HS.InLaborers,distance=..5] at @s run function evercraft:housing/laborers/do_hire {type:"$(type)",type_tag:"$(type_tag)",display_name:"$(display_name)",cost:$(cost),rank_req:$(rank_req),profession:"$(profession)",color:"$(color)"}
