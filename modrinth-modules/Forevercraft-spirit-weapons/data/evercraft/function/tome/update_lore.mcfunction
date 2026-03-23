# Tome of Experience — Deferred lore update (runs 1 tick after absorb/withdraw)
# Finds tagged players and replaces their held tome with updated lore

execute as @a[tag=ec.tome_update] run function evercraft:tome/do_update_lore
