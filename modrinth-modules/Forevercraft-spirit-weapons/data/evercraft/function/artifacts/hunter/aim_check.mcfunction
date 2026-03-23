# Hunter — Per-tick Aim Check
# Called for players with ec.ht_active tag (detect+tag pattern)

# Deactivate if player swapped away from hunter crossbow
execute unless items entity @s weapon.mainhand crossbow[custom_data~{hunter:true}] run scoreboard players set @s ec.ht_aim 0
execute unless items entity @s weapon.mainhand crossbow[custom_data~{hunter:true}] run tag @s remove ec.ht_active
execute unless items entity @s weapon.mainhand crossbow[custom_data~{hunter:true}] run return 0

# Always re-identify crossbow (player may have swapped between hunter crossbows)
function evercraft:artifacts/hunter/identify_crossbow

# One-time init: set hit_timer to -1 (inactive) if unset
execute unless score @s ec.ht_hit_timer matches ..-1 unless score @s ec.ht_hit_timer matches 0.. run scoreboard players set @s ec.ht_hit_timer -1

# === LOADED CROSSBOW: Steady Aim logic ===
# Sneaking + loaded → aim_tick (build focus)
execute if data entity @s SelectedItem.components."minecraft:charged_projectiles"[0] if entity @s[predicate=evercraft:is_sneaking] run function evercraft:artifacts/hunter/aim_tick

# Loaded but not sneaking → reset aim (keep charged flag if already set)
execute if data entity @s SelectedItem.components."minecraft:charged_projectiles"[0] unless entity @s[predicate=evercraft:is_sneaking] run scoreboard players set @s ec.ht_aim 0

# === UNLOADED: fire detection ===
# If charged and crossbow is now unloaded → they fired → start hit timer
execute unless data entity @s SelectedItem.components."minecraft:charged_projectiles"[0] if score @s ec.ht_charged matches 1 unless score @s ec.ht_hit_timer matches 1.. run scoreboard players set @s ec.ht_hit_timer 60

# Reset aim when unloaded
execute unless data entity @s SelectedItem.components."minecraft:charged_projectiles"[0] if score @s ec.ht_aim matches 1.. run scoreboard players set @s ec.ht_aim 0
