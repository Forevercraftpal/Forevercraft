# Artisan Tome — Update tome item lore after quest completion
# Scheduled for next tick after completion (can't modify item during use event)

# Process each player tagged for update
execute as @a[tag=ec.tq_update_tome] run function evercraft:craftforever/spirit_tools/tome/do_update_tome
