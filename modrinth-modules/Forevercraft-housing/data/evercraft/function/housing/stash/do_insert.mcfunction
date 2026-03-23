# ============================================================
# Quick Stash — Execute item transfer (macro)
# Run as: player, positioned at barrel block (aligned)
# Args: slot (player inventory slot), barrel_slot (barrel container slot)
# Returns: 1 on success
# ============================================================

# Copy item from player inventory to barrel
$item replace block ~ ~ ~ container.$(barrel_slot) from entity @s container.$(slot)

# Clear the player's inventory slot (item was copied, not moved)
$item replace entity @s container.$(slot) with minecraft:air

# Track count
scoreboard players add @s hs.stashed 1

return 1
