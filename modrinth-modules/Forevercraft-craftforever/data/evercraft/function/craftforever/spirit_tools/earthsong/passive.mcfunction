# Earthsong — Passive: Haste III + Night Vision underground + particles
# Run as/at: player holding Earthsong

# Haste III (refreshed every 40 ticks) — affinity can upgrade to IV/V/VI
execute if score #st_effect_cd ec.var matches 0 run effect give @s haste 3 2 true
function evercraft:craft_affinity/apply_haste_bonus

# Night Vision when below Y=50
execute if score #st_effect_cd ec.var matches 0 positioned ~ 50 ~ if entity @s[y=-64,dy=114] run effect give @s night_vision 5 0 true

# Ambient particles (every 10 ticks)
execute if score #st_effect_cd ec.var matches 0 run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.3 5
execute if score #st_effect_cd ec.var matches 20 run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.3 5
# Auto-smelt nearby raw ores (every 10 ticks — cadence 0 and 20)
execute if score #st_effect_cd ec.var matches 0 run function evercraft:craftforever/spirit_tools/earthsong/auto_smelt
execute if score #st_effect_cd ec.var matches 20 run function evercraft:craftforever/spirit_tools/earthsong/auto_smelt

# NOTE: Mine detection handled by marker-based break system (check_player → process_markers → on_break)
# Stat-delta removed to prevent double-fire cascade (area mine destroys blocks → stats change → re-fire)
