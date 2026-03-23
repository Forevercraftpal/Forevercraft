# Dream Storm Crystal — Right-click handler
# Fires when crystal is consumed. Check offhand for spirit artifact.
# Twin classes get their twin weapon. Non-twin classes get 25% boost.

advancement revoke @s only evercraft:spirit/dream_crystal_consume

# Check offhand has a spirit artifact
execute unless items entity @s weapon.offhand *[custom_data~{spirit_artifact:true}] run return run tellraw @s [{"text":"Hold a Spirit Artifact in your offhand!","color":"red"}]

# Prevent double-use race condition (crystal consumed before hopper minecart writes flag)
execute if entity @s[tag=ec.sp_crystal_pending] run return run tellraw @s [{"text":"Crystal already processing!","color":"red"}]

# Check if the spirit artifact already has a twin or boost
execute if items entity @s weapon.offhand *[custom_data~{spirit_twin:true}] run return run tellraw @s [{"text":"This artifact already has its twin!","color":"red"}]
execute if items entity @s weapon.offhand *[custom_data~{spirit_boosted:true}] run return run tellraw @s [{"text":"This artifact is already boosted!","color":"red"}]

# === NEW REQUIREMENTS: Mythical tier + Spirit Tome page 50 ===
# Tier is stored as string in custom_data — check that offhand is at least Mythical (tier:"mythical" or tier:"spirit")
# If NOT mythical AND NOT spirit → block
execute unless items entity @s weapon.offhand *[custom_data~{tier:"mythical"}] unless items entity @s weapon.offhand *[custom_data~{tier:"spirit"}] run return run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"NOT READY","color":"red","bold":true},{"text":" — Your Spirit Artifact must reach ","color":"gray"},{"text":"Mythical","color":"light_purple","bold":true},{"text":" tier first!","color":"gray"}]

# Check Spirit Tome quest page requirement
execute if score @s ec.sq_part matches ..49 run return run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"NOT READY","color":"red","bold":true},{"text":" — Complete Spirit Tome quest ","color":"gray"},{"text":"50","color":"gold","bold":true},{"text":" first!","color":"gray"}]

# Set pending flag to prevent double-use
tag @s add ec.sp_crystal_pending

# === TWIN CLASSES (get twin weapon) ===
# Hollow Fangs (1) → Snow Blade
execute if items entity @s weapon.offhand *[custom_data~{spirit_id:1b}] run return run function evercraft:spirit/twin/give_twin_hollow_fangs

# Firebrand (3) → Aqualoch
execute if items entity @s weapon.offhand *[custom_data~{spirit_id:3b}] run return run function evercraft:spirit/twin/give_twin_firebrand

# Zephyr Edge (4) → Storm Edge
execute if items entity @s weapon.offhand *[custom_data~{spirit_id:4b}] run return run function evercraft:spirit/twin/give_twin_zephyr

# Nite (5) → Deih
execute if items entity @s weapon.offhand *[custom_data~{spirit_id:5b}] run return run function evercraft:spirit/twin/give_twin_nite

# Ashcrown Mace (7) → Ashcrown Shield
execute if items entity @s weapon.offhand *[custom_data~{spirit_id:7b}] run return run function evercraft:spirit/twin/give_twin_ashcrown

# Wyrmcleaver (12) → Wyrmguard
execute if items entity @s weapon.offhand *[custom_data~{spirit_id:12b}] run return run function evercraft:spirit/twin/give_twin_dragonheart

# Depthsworn (14) → Vanguard Shield
execute if items entity @s weapon.offhand *[custom_data~{spirit_id:14b}] run return run function evercraft:spirit/twin/give_twin_royal_trident

# === NON-TWIN CLASSES (get 25% solo boost) ===
# All remaining spirit_ids: 2, 6, 8, 9, 10, 11, 13
function evercraft:spirit/twin/apply_boost
