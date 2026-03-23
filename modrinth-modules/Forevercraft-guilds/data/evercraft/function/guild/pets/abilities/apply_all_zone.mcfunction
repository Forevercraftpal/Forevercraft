# ============================================================
# Guild Companion Abilities — Apply all guild pet abilities to a player
# Run as: player in guild zone
# Applies abilities from ALL guild companions (not just own) to this player
# Uses "guild/slotN" modifier names to avoid conflicts with home companion modifiers
# ============================================================

# Clean slate — remove existing guild modifiers first
function evercraft:guild/pets/abilities/reset_all

# Store the target player's companion.id so read_and_apply can find them
scoreboard players operation #gc_ability_target companion.id = @s companion.id

# Find all guild companions belonging to this guild
scoreboard players operation #Search ec.guild_id = @s ec.guild_id

# For each GC.Head entity with matching guild ID, read and apply abilities
execute as @e[type=item_display, tag=GC.Head] if score @s ec.guild_id = #Search ec.guild_id run function evercraft:guild/pets/abilities/read_and_apply
