# Dancer Artifacts — Per-Tick Processing
# Manages dual-wield state, Haste II, and flurry auto-swing
# OPT: 5 @a[tag=ec.dn_active] scans → 1 (tick_player sub-function)
execute as @a[tag=ec.dn_active] run function evercraft:artifacts/dancer/tick_player
