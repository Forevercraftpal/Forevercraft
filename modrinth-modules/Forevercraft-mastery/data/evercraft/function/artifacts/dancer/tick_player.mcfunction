# Dancer — Per-player tick (validate + dual-wield + haste + flurry)
# OPT: Consolidates 5 @a[tag=ec.dn_active] scans into 1 function call

# Validate still holding dancer gauntlet
execute unless items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] run function evercraft:artifacts/dancer/remove

# Update dual-wield state
execute if items entity @s weapon.offhand #minecraft:swords[custom_data~{dancer:true}] if score @s ec.dn_dual matches 0 run function evercraft:artifacts/dancer/gain_dual
execute unless items entity @s weapon.offhand #minecraft:swords[custom_data~{dancer:true}] if score @s ec.dn_dual matches 1 run function evercraft:artifacts/dancer/lose_dual

# Haste II for dual-wielders
execute if score @s ec.dn_dual matches 1 run effect give @s haste 2 1 true

# Flurry tick (auto-swing during active flurry)
execute if score @s ec.dn_flurry matches 1.. at @s anchored eyes run function evercraft:artifacts/dancer/flurry_tick
