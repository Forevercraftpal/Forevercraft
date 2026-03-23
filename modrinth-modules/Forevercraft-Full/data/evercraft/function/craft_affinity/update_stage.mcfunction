# === CRAFTING AFFINITY — UPDATE STAGE & BOOST ===
# Run as player after any crafting affinity change

# Get total into #aff_total
scoreboard players set #aff_total ec.temp 0
execute if score @s ec.caff_class matches 1 run scoreboard players operation #aff_total ec.temp = @s ec.caff_ss
execute if score @s ec.caff_class matches 2 run scoreboard players operation #aff_total ec.temp = @s ec.caff_lf
execute if score @s ec.caff_class matches 3 run scoreboard players operation #aff_total ec.temp = @s ec.caff_gs
execute if score @s ec.caff_class matches 4 run scoreboard players operation #aff_total ec.temp = @s ec.caff_tw
execute if score @s ec.caff_class matches 5 run scoreboard players operation #aff_total ec.temp = @s ec.caff_sc
execute if score @s ec.caff_class matches 6 run scoreboard players operation #aff_total ec.temp = @s ec.caff_lm

# Save old stage for comparison
scoreboard players set #old_stage ec.temp 0
execute if score @s ec.caff_class matches 1 run scoreboard players operation #old_stage ec.temp = @s ec.caffs_ss
execute if score @s ec.caff_class matches 2 run scoreboard players operation #old_stage ec.temp = @s ec.caffs_lf
execute if score @s ec.caff_class matches 3 run scoreboard players operation #old_stage ec.temp = @s ec.caffs_gs
execute if score @s ec.caff_class matches 4 run scoreboard players operation #old_stage ec.temp = @s ec.caffs_tw
execute if score @s ec.caff_class matches 5 run scoreboard players operation #old_stage ec.temp = @s ec.caffs_sc
execute if score @s ec.caff_class matches 6 run scoreboard players operation #old_stage ec.temp = @s ec.caffs_lm

# Calculate new stage + boost from total (same thresholds as combat)
scoreboard players set #new_stage ec.temp 0
scoreboard players set #new_boost ec.temp 0
execute if score #aff_total ec.temp matches 1000000.. run scoreboard players set #new_stage ec.temp 1
execute if score #aff_total ec.temp matches 3000000.. run scoreboard players set #new_stage ec.temp 2
execute if score #aff_total ec.temp matches 3000000.. run scoreboard players set #new_boost ec.temp 3
execute if score #aff_total ec.temp matches 6000000.. run scoreboard players set #new_stage ec.temp 3
execute if score #aff_total ec.temp matches 6000000.. run scoreboard players set #new_boost ec.temp 5
execute if score #aff_total ec.temp matches 10000000.. run scoreboard players set #new_stage ec.temp 4
execute if score #aff_total ec.temp matches 10000000.. run scoreboard players set #new_boost ec.temp 7
execute if score #aff_total ec.temp matches 15000000.. run scoreboard players set #new_stage ec.temp 5
execute if score #aff_total ec.temp matches 15000000.. run scoreboard players set #new_boost ec.temp 10
execute if score #aff_total ec.temp matches 22500000.. run scoreboard players set #new_stage ec.temp 6
execute if score #aff_total ec.temp matches 22500000.. run scoreboard players set #new_boost ec.temp 12
execute if score #aff_total ec.temp matches 30000000.. run scoreboard players set #new_stage ec.temp 7
execute if score #aff_total ec.temp matches 30000000.. run scoreboard players set #new_boost ec.temp 15

# Mastery quest override: 20% if mastered
# Check mastery bitmask: class 1=bit 1, class 2=bit 2, etc.
execute if score #new_stage ec.temp matches 7 if score @s ec.caff_class matches 1 run execute store result score #mask ec.temp run scoreboard players get @s ec.caff_mastered
execute if score #new_stage ec.temp matches 7 if score @s ec.caff_class matches 1 run execute store result score #bit ec.temp run return run scoreboard players operation #mask ec.temp %= #2 ec.temp
# Simplified: use individual mastery flags instead of bitmask (cleaner)
# ec.caffm_ss = 1 means Stonestrike mastered, etc.
execute if score #new_stage ec.temp matches 7 if score @s ec.caff_class matches 1 if score @s ec.caffm_ss matches 1 run scoreboard players set #new_boost ec.temp 20
execute if score #new_stage ec.temp matches 7 if score @s ec.caff_class matches 2 if score @s ec.caffm_lf matches 1 run scoreboard players set #new_boost ec.temp 20
execute if score #new_stage ec.temp matches 7 if score @s ec.caff_class matches 3 if score @s ec.caffm_gs matches 1 run scoreboard players set #new_boost ec.temp 20
execute if score #new_stage ec.temp matches 7 if score @s ec.caff_class matches 4 if score @s ec.caffm_tw matches 1 run scoreboard players set #new_boost ec.temp 20
execute if score #new_stage ec.temp matches 7 if score @s ec.caff_class matches 5 if score @s ec.caffm_sc matches 1 run scoreboard players set #new_boost ec.temp 20
execute if score #new_stage ec.temp matches 7 if score @s ec.caff_class matches 6 if score @s ec.caffm_lm matches 1 run scoreboard players set #new_boost ec.temp 20

# Write stage + boost to correct class
execute if score @s ec.caff_class matches 1 run scoreboard players operation @s ec.caffs_ss = #new_stage ec.temp
execute if score @s ec.caff_class matches 1 run scoreboard players operation @s ec.caffb_ss = #new_boost ec.temp
execute if score @s ec.caff_class matches 2 run scoreboard players operation @s ec.caffs_lf = #new_stage ec.temp
execute if score @s ec.caff_class matches 2 run scoreboard players operation @s ec.caffb_lf = #new_boost ec.temp
execute if score @s ec.caff_class matches 3 run scoreboard players operation @s ec.caffs_gs = #new_stage ec.temp
execute if score @s ec.caff_class matches 3 run scoreboard players operation @s ec.caffb_gs = #new_boost ec.temp
execute if score @s ec.caff_class matches 4 run scoreboard players operation @s ec.caffs_tw = #new_stage ec.temp
execute if score @s ec.caff_class matches 4 run scoreboard players operation @s ec.caffb_tw = #new_boost ec.temp
execute if score @s ec.caff_class matches 5 run scoreboard players operation @s ec.caffs_sc = #new_stage ec.temp
execute if score @s ec.caff_class matches 5 run scoreboard players operation @s ec.caffb_sc = #new_boost ec.temp
execute if score @s ec.caff_class matches 6 run scoreboard players operation @s ec.caffs_lm = #new_stage ec.temp
execute if score @s ec.caff_class matches 6 run scoreboard players operation @s ec.caffb_lm = #new_boost ec.temp

# Stage-up celebration (only if stage increased)
execute unless score #new_stage ec.temp = #old_stage ec.temp if score #new_stage ec.temp > #old_stage ec.temp run function evercraft:craft_affinity/stage_up
