# Trophy Gallery — Show trophy details (Macro)
# Run as: interaction entity (from attack detection)
# Args: name, color, requirement, earned_score, earned_label, bit

# Clear attack data
data remove entity @s attack

# Bridge to player and show info
$execute as @p[tag=CF.InCodex,distance=..5] run function evercraft:craftforever/codex/hub/trophies/show_trophy_info_tell {name:"$(name)",color:"$(color)",requirement:"$(requirement)",earned_score:"$(earned_score)",earned_label:"$(earned_label)",bit:"$(bit)"}
