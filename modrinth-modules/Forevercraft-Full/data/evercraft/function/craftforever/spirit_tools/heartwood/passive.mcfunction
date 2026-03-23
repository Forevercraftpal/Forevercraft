# Heartwood — Passive: Haste III + log delta detection
# Run as/at: player holding Heartwood

execute if score #st_effect_cd ec.var matches 0 run effect give @s haste 3 2 true
function evercraft:craft_affinity/apply_haste_bonus

# Leaf particles
execute if score #st_effect_cd ec.var matches 0 run particle minecraft:falling_dust{block_state:{Name:"oak_leaves"}} ~ ~2 ~ 1 0.5 1 0.01 2

# NOTE: Log mine detection handled by marker-based break system (check_player → process_markers → on_break)
# Stat-delta removed to prevent double-fire cascade (spirit fell destroys logs → stats change → re-fire)
