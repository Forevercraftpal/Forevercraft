# Spirit Tome — Update tome item lore after quest completion
# Scheduled for next tick after completion (can't modify item during use event)

# Process each player tagged for update
execute as @a[tag=ec.sq_update_tome] run function evercraft:spirit_tome/do_update_tome
