# Lore Collect: Physical item consumed (right-click bone/etc)
# Fired by advancement lore/consume_piece
# The item is already destroyed by consumption. ec.lore_cached has the UID.

# Revoke advancement so it can fire again
advancement revoke @s only evercraft:lore/consume_piece

# Use the cached UID (set by tick pre-cache)
execute if score @s ec.lore_cached matches 1.. run scoreboard players operation @s ec.lore_add = @s ec.lore_cached
execute if score @s ec.lore_cached matches 1.. run function evercraft:lore/collect/try_add_physical

# Reset cache + prevent stale ec.lore_add from leaking into book-trigger path
scoreboard players set @s ec.lore_cached 0
scoreboard players set @s ec.lore_add 0
scoreboard players enable @s ec.lore_add
