# Lock a found barrel and spawn the animation display
# Macro args: $(tier), $(system_tag), $(plot_start), $(skin)
# Run as: the player, positioned at the barrel block
# Called by scan_for_barrel when a valid barrel is found

# Remove the searching tag so we stop scanning
tag @s remove ec.searching

# Lock the barrel to prevent opening during animation
data merge block ~ ~ ~ {lock:{items:"minecraft:air"}}

# Spawn the animation display at the barrel position
$function evercraft:crate_anim/spawn_display {tier:"$(tier)",system_tag:"$(system_tag)",plot_start:$(plot_start),skin:"$(skin)"}
