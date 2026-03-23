# Migrate codex items and ensure all players have a codex
# Runs on every /reload and server start via init.mcfunction

# --- Step 1: Replace old recovery_compass codex items ---
tag @a remove ec.had_old_codex
execute as @a store success score @s ec.temp run clear @s recovery_compass[custom_data~{artifact_codex:true}] 0
execute as @a if score @s ec.temp matches 1.. run tag @s add ec.had_old_codex
execute as @a[tag=ec.had_old_codex] run clear @s recovery_compass[custom_data~{artifact_codex:true}]
execute as @a[tag=ec.had_old_codex] run loot give @s loot evercraft:items/artifact_codex_item
execute as @a[tag=ec.had_old_codex] run tellraw @s [{text:"[Forevercraft] ",color:"gold",bold:true},{text:"Your codex has been upgraded!",color:"yellow"}]
tag @a remove ec.had_old_codex

# --- Step 2: Replace old warped_fungus_on_a_stick codex items ---
tag @a remove ec.had_old_codex
execute as @a store success score @s ec.temp run clear @s warped_fungus_on_a_stick[custom_data~{artifact_codex:true}] 0
execute as @a if score @s ec.temp matches 1.. run tag @s add ec.had_old_codex
execute as @a[tag=ec.had_old_codex] run clear @s warped_fungus_on_a_stick[custom_data~{artifact_codex:true}]
execute as @a[tag=ec.had_old_codex] run loot give @s loot evercraft:items/artifact_codex_item
tag @a remove ec.had_old_codex

# --- Step 3: Replace old stick codex items with book ---
tag @a remove ec.had_old_codex
execute as @a store success score @s ec.temp run clear @s stick[custom_data~{artifact_codex:true}] 0
execute as @a if score @s ec.temp matches 1.. run tag @s add ec.had_old_codex
execute as @a[tag=ec.had_old_codex] run clear @s stick[custom_data~{artifact_codex:true}]
execute as @a[tag=ec.had_old_codex] run loot give @s loot evercraft:items/artifact_codex_item
execute as @a[tag=ec.had_old_codex] run tellraw @s [{text:"[Forevercraft] ",color:"gold",bold:true},{text:"Your codex has been upgraded to a book!",color:"yellow"}]
tag @a remove ec.had_old_codex

# --- Step 4: Refresh all existing codex items to latest version ---
# Ensures name, lore, and model are always up-to-date after changes
# 4a: Forevercraft Codex
tag @a remove ec.had_old_codex
execute as @a store success score @s ec.temp run clear @s book[custom_data~{artifact_codex:true}] 0
execute as @a if score @s ec.temp matches 1.. run tag @s add ec.had_old_codex
execute as @a[tag=ec.had_old_codex] run clear @s book[custom_data~{artifact_codex:true}]
execute as @a[tag=ec.had_old_codex] run loot give @s loot evercraft:items/artifact_codex_item
tag @a remove ec.had_old_codex
# 4b: Eternal Codex
tag @a remove ec.had_old_codex
execute as @a store success score @s ec.temp run clear @s book[custom_data~{eternal_codex:true}] 0
execute as @a if score @s ec.temp matches 1.. run tag @s add ec.had_old_codex
execute as @a[tag=ec.had_old_codex] run clear @s book[custom_data~{eternal_codex:true}]
execute as @a[tag=ec.had_old_codex] run loot give @s loot evercraft:ecodex/eternal_codex
tag @a remove ec.had_old_codex
# 4c: Phoenix Codex
tag @a remove ec.had_old_codex
execute as @a store success score @s ec.temp run clear @s book[custom_data~{phoenix_codex:true}] 0
execute as @a if score @s ec.temp matches 1.. run tag @s add ec.had_old_codex
execute as @a[tag=ec.had_old_codex] run clear @s book[custom_data~{phoenix_codex:true}]
execute as @a[tag=ec.had_old_codex] run loot give @s loot evercraft:phoenix/phoenix_codex
tag @a remove ec.had_old_codex
# 4d: Craftforever Codex
tag @a remove ec.had_old_codex
execute as @a store success score @s ec.temp run clear @s book[custom_data~{craftforever_codex:true}] 0
execute as @a if score @s ec.temp matches 1.. run tag @s add ec.had_old_codex
execute as @a[tag=ec.had_old_codex] run clear @s book[custom_data~{craftforever_codex:true}]
execute as @a[tag=ec.had_old_codex] run loot give @s loot evercraft:craftforever/codex_item
tag @a remove ec.had_old_codex

# --- Step 4: Bootstrap ec.has_artifacts for existing players ---
# Delegates to bootstrap function which checks ALL 265+ artifact advancements
function evercraft:codex/bootstrap_has_artifacts

# --- Step 5: Give codex to ALL online players who don't have one ---
# Tier-aware: give the player their highest unlocked codex variant
# Check if player already has ANY codex variant
tag @a remove ec.has_any_codex
execute as @a if items entity @s container.* book[custom_data~{artifact_codex:true}] run tag @s add ec.has_any_codex
execute as @a if items entity @s weapon.offhand book[custom_data~{artifact_codex:true}] run tag @s add ec.has_any_codex
execute as @a if items entity @s enderchest.* book[custom_data~{artifact_codex:true}] run tag @s add ec.has_any_codex
execute as @a if items entity @s container.* book[custom_data~{eternal_codex:true}] run tag @s add ec.has_any_codex
execute as @a if items entity @s weapon.offhand book[custom_data~{eternal_codex:true}] run tag @s add ec.has_any_codex
execute as @a if items entity @s enderchest.* book[custom_data~{eternal_codex:true}] run tag @s add ec.has_any_codex
execute as @a if items entity @s container.* book[custom_data~{phoenix_codex:true}] run tag @s add ec.has_any_codex
execute as @a if items entity @s weapon.offhand book[custom_data~{phoenix_codex:true}] run tag @s add ec.has_any_codex
execute as @a if items entity @s enderchest.* book[custom_data~{phoenix_codex:true}] run tag @s add ec.has_any_codex

# Give tier-appropriate codex to players missing one
execute as @a[tag=!ec.has_any_codex] if score @s ec.codex_tier matches 3.. run loot give @s loot evercraft:phoenix/phoenix_codex
execute as @a[tag=!ec.has_any_codex] if score @s ec.codex_tier matches 1..2 run loot give @s loot evercraft:ecodex/eternal_codex
execute as @a[tag=!ec.has_any_codex] if score @s ec.codex_tier matches ..0 run loot give @s loot evercraft:items/artifact_codex_item
tag @a remove ec.has_any_codex
