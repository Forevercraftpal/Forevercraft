# Hero's Satchel Menu — Handle Click (macro)
# Args from storage: bid (bag ID), slot (s0-s10)
# If slot has artifact → retrieve. If empty + mainhand has boss artifact → store.

# Snapshot whether slot has an artifact BEFORE either branch mutates it
$execute store success score #satch_op ec.temp if data storage evercraft:hero_satchel bags.$(bid).$(slot).artifact
$execute if score #satch_op ec.temp matches 1 run function evercraft:hero_satchel/menu/retrieve with storage evercraft:hero_satchel temp
$execute if score #satch_op ec.temp matches 0 run function evercraft:hero_satchel/menu/try_store with storage evercraft:hero_satchel temp

# Refresh display
function evercraft:hero_satchel/menu/refresh
