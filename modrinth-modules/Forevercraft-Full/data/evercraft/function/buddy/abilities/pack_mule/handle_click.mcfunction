# Pack Mule — Handle Click (macro)
# $(pid) = player ID, $(slot) = s0/s1/s2

# Snapshot whether slot has an item BEFORE either branch mutates it
$execute store success score #satch_op ec.temp if data storage evercraft:buddy mule.$(pid).$(slot).name
$execute if score #satch_op ec.temp matches 1 run function evercraft:buddy/abilities/pack_mule/retrieve with storage evercraft:buddy mule_temp
$execute if score #satch_op ec.temp matches 0 run function evercraft:buddy/abilities/pack_mule/store with storage evercraft:buddy mule_temp

# Refresh display
function evercraft:buddy/abilities/pack_mule/refresh
