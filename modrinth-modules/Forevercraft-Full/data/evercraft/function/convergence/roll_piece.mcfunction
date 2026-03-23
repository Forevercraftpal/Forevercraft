# Harmonic Convergence: Roll a convergence-specific lore piece
# Run as player, at player position
# Forces lore set to s163 (Echoes of Convergence) and picks a piece from it

# Set the convergence lore set directly
scoreboard players set @s ec.lore_set_id 163

# Pick a piece from the set (reuse existing lore system)
function evercraft:lore/roll/pick_piece_from_set

# Give the item to the player
function evercraft:lore/give/dispatch
