# Javelin — Per-player tick (validate + hoplite + resistance)
# OPT: Consolidates 3 @a[tag=ec.jv_active] scans into 1 function call

# Validate still holding javelin trident
# Only remove if player switched to a DIFFERENT item — empty mainhand means trident is thrown (in flight)
execute if items entity @s weapon.mainhand * unless items entity @s weapon.mainhand minecraft:trident[custom_data~{javelin:true}] run function evercraft:artifacts/javelin/remove

# Hoplite state refresh (check offhand shield)
function evercraft:artifacts/javelin/hoplite_check

# Hoplite passive — Resistance I refresh
execute if score @s ec.jv_hoplite matches 1 run effect give @s resistance 3 0 true
