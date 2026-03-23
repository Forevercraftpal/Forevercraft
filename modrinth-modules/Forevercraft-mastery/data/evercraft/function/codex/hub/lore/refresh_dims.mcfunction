# Lore — Refresh Dimension Picker Progress Counts
# Count completed sets per dimension and update description text
# Run as the player

# Store per-dimension counts to storage for macro display
execute store result storage evercraft:lore_gui dim0 int 1 run scoreboard players get @s ec.lore_dim0_done
execute store result storage evercraft:lore_gui dim1 int 1 run scoreboard players get @s ec.lore_dim1_done
execute store result storage evercraft:lore_gui dim2 int 1 run scoreboard players get @s ec.lore_dim2_done
execute store result storage evercraft:lore_gui dim3 int 1 run scoreboard players get @s ec.lore_dim3_done

# Update text_displays via macro
function evercraft:codex/hub/lore/refresh_dims_inner with storage evercraft:lore_gui
