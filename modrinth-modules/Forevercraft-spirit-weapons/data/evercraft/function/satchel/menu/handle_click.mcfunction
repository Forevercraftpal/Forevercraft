# Satchel Menu — Handle Click (macro)
# Args from storage: bid (bag ID), slot (s0-s6)
# If slot has artifact → retrieve. If empty + mainhand has artifact → store.

# Snapshot whether slot has an artifact BEFORE either branch mutates it
$execute store success score #satch_op ec.temp if data storage evercraft:satchel bags.$(bid).$(slot).artifact
$execute if score #satch_op ec.temp matches 1 run function evercraft:satchel/menu/retrieve_artifact with storage evercraft:satchel temp
$execute if score #satch_op ec.temp matches 0 run function evercraft:satchel/menu/try_store_artifact with storage evercraft:satchel temp

# Refresh display
function evercraft:satchel/menu/refresh
