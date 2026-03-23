# Pantry Menu — Handle Click (macro)
# Args from storage: pid, slot (s0-s26)
# Checks if slot is occupied, dispatches to retrieve or store

# Snapshot whether slot has an item BEFORE either branch mutates it
$execute store success score #satch_op ec.temp if data storage evercraft:pantry bags.$(pid).$(slot).item
$execute if score #satch_op ec.temp matches 1 run function evercraft:pantry/menu/retrieve with storage evercraft:pantry temp
$execute if score #satch_op ec.temp matches 0 run function evercraft:pantry/menu/try_store with storage evercraft:pantry temp

# Refresh display
function evercraft:pantry/menu/refresh
