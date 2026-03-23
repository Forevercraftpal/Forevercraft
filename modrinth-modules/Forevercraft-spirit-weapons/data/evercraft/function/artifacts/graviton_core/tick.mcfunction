# Graviton Core - Tick Function
# Applies all effects for players with Graviton Core
# OPT: Combined inventory + offhand check into 1 per-player function (was 2 @a scans)

# OPT: Gate on has_accessory tag — players without accessories can't have graviton core
execute as @a[tag=ec.has_accessory] run function evercraft:artifacts/graviton_core/check_player

schedule function evercraft:artifacts/graviton_core/tick 5t
