# Mythical Tools - Tick Function
# Handles special abilities for mythical tools
# OPT: Marker processing inlined, 3 @a at @s scans consolidated into 1

# === MARKER PROCESSING (break detection + cleanup) ===

# Axe of Honor markers (OPT: gate with existence check)
execute if entity @e[type=marker,tag=ec_axe_target,limit=1] run function evercraft:artifacts/mythical_tools/axe_of_honor/process_markers

# Journey Pickaxe markers
execute if entity @e[type=marker,tag=ec_pick_target,limit=1] run function evercraft:artifacts/mythical_tools/journey_pickaxe/process_markers

# Journey Shovel markers
execute if entity @e[type=marker,tag=ec_shov_target,limit=1] run function evercraft:artifacts/mythical_tools/journey_shovel/process_markers

# === PLAYER TOOL CHECK (single @a pass for all marker-based tools) ===
execute as @a at @s run function evercraft:artifacts/mythical_tools/check_player

# === STAT-GATED CHECKS ===
# Hoe of Honor — usage stat (no markers needed)
execute as @a[scores={ec.used_n_hoe=1..}] run function evercraft:artifacts/mythical_tools/hoe_of_honor/on_use
scoreboard players set @a[scores={ec.used_n_hoe=1..}] ec.used_n_hoe 0

# Journey Pickaxe — right-click toggle
execute as @a[scores={ec.used_n_pick=1..}] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] run function evercraft:artifacts/mythical_tools/journey_pickaxe/toggle_enchant
scoreboard players set @a[scores={ec.used_n_pick=1..}] ec.used_n_pick 0

# Journey Set - Item Magnetism (moved to 10-tick schedule for visual drop pop-out)
