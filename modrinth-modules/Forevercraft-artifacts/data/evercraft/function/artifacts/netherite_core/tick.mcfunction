# Ancient Netherite Core - Tick Function
# Consumes netherite blocks when sneaking + holding core in main hand

# Schedule first so loop never dies
schedule function evercraft:artifacts/netherite_core/tick 5t

# OPT: Fast path — if anyone is actively absorbing, always run checks (need interrupt detection)
execute if entity @a[tag=nc_absorbing] run function evercraft:artifacts/netherite_core/tick_logic
execute if entity @a[tag=nc_absorbing] run return 0

# OPT: Gate — the core is a rare endgame item. Skip 4 @a scans when nobody holds it.
execute as @a if items entity @s weapon.mainhand minecraft:stick[custom_data~{ancient_netherite_core:1b}] run return run function evercraft:artifacts/netherite_core/tick_logic
