# === UPDATE STAGE & BOOST ===
# Run as player after any affinity change
# Reads total for current class, sets stage + boost, detects stage-up

# Get total into #aff_total ec.temp
scoreboard players set #aff_total ec.temp 0
execute if score @s ec.aff_class matches 1 run scoreboard players operation #aff_total ec.temp = @s ec.aff_rg
execute if score @s ec.aff_class matches 2 run scoreboard players operation #aff_total ec.temp = @s ec.aff_bk
execute if score @s ec.aff_class matches 3 run scoreboard players operation #aff_total ec.temp = @s ec.aff_dn
execute if score @s ec.aff_class matches 4 run scoreboard players operation #aff_total ec.temp = @s ec.aff_sk
execute if score @s ec.aff_class matches 5 run scoreboard players operation #aff_total ec.temp = @s ec.aff_kt
execute if score @s ec.aff_class matches 6 run scoreboard players operation #aff_total ec.temp = @s ec.aff_hl
execute if score @s ec.aff_class matches 7 run scoreboard players operation #aff_total ec.temp = @s ec.aff_bl
execute if score @s ec.aff_class matches 8 run scoreboard players operation #aff_total ec.temp = @s ec.aff_jv
execute if score @s ec.aff_class matches 9 run scoreboard players operation #aff_total ec.temp = @s ec.aff_hp
execute if score @s ec.aff_class matches 10 run scoreboard players operation #aff_total ec.temp = @s ec.aff_ar
execute if score @s ec.aff_class matches 11 run scoreboard players operation #aff_total ec.temp = @s ec.aff_ht
execute if score @s ec.aff_class matches 12 run scoreboard players operation #aff_total ec.temp = @s ec.aff_tk
execute if score @s ec.aff_class matches 13 run scoreboard players operation #aff_total ec.temp = @s ec.aff_kn
execute if score @s ec.aff_class matches 14 run scoreboard players operation #aff_total ec.temp = @s ec.aff_ds

# Save old stage for comparison
scoreboard players set #old_stage ec.temp 0
execute if score @s ec.aff_class matches 1 run scoreboard players operation #old_stage ec.temp = @s ec.affs_rg
execute if score @s ec.aff_class matches 2 run scoreboard players operation #old_stage ec.temp = @s ec.affs_bk
execute if score @s ec.aff_class matches 3 run scoreboard players operation #old_stage ec.temp = @s ec.affs_dn
execute if score @s ec.aff_class matches 4 run scoreboard players operation #old_stage ec.temp = @s ec.affs_sk
execute if score @s ec.aff_class matches 5 run scoreboard players operation #old_stage ec.temp = @s ec.affs_kt
execute if score @s ec.aff_class matches 6 run scoreboard players operation #old_stage ec.temp = @s ec.affs_hl
execute if score @s ec.aff_class matches 7 run scoreboard players operation #old_stage ec.temp = @s ec.affs_bl
execute if score @s ec.aff_class matches 8 run scoreboard players operation #old_stage ec.temp = @s ec.affs_jv
execute if score @s ec.aff_class matches 9 run scoreboard players operation #old_stage ec.temp = @s ec.affs_hp
execute if score @s ec.aff_class matches 10 run scoreboard players operation #old_stage ec.temp = @s ec.affs_ar
execute if score @s ec.aff_class matches 11 run scoreboard players operation #old_stage ec.temp = @s ec.affs_ht
execute if score @s ec.aff_class matches 12 run scoreboard players operation #old_stage ec.temp = @s ec.affs_tk
execute if score @s ec.aff_class matches 13 run scoreboard players operation #old_stage ec.temp = @s ec.affs_kn
execute if score @s ec.aff_class matches 14 run scoreboard players operation #old_stage ec.temp = @s ec.affs_ds

# Calculate new stage from total
scoreboard players set #new_stage ec.temp 0
scoreboard players set #new_boost ec.temp 0
execute if score #aff_total ec.temp matches 1000000.. run scoreboard players set #new_stage ec.temp 1
execute if score #aff_total ec.temp matches 3000000.. run scoreboard players set #new_stage ec.temp 2
execute if score #aff_total ec.temp matches 3000000.. run scoreboard players set #new_boost ec.temp 10
execute if score #aff_total ec.temp matches 6000000.. run scoreboard players set #new_stage ec.temp 3
execute if score #aff_total ec.temp matches 6000000.. run scoreboard players set #new_boost ec.temp 20
execute if score #aff_total ec.temp matches 10000000.. run scoreboard players set #new_stage ec.temp 4
execute if score #aff_total ec.temp matches 10000000.. run scoreboard players set #new_boost ec.temp 30
execute if score #aff_total ec.temp matches 15000000.. run scoreboard players set #new_stage ec.temp 5
execute if score #aff_total ec.temp matches 15000000.. run scoreboard players set #new_boost ec.temp 40
execute if score #aff_total ec.temp matches 22500000.. run scoreboard players set #new_stage ec.temp 6
execute if score #aff_total ec.temp matches 22500000.. run scoreboard players set #new_boost ec.temp 50
execute if score #aff_total ec.temp matches 30000000.. run scoreboard players set #new_stage ec.temp 7
execute if score #aff_total ec.temp matches 30000000.. run scoreboard players set #new_boost ec.temp 75

# Spirit + Twin override: 100% boost
execute if score #new_stage ec.temp matches 7 if score @s ec.aff_spirit matches 1 if score @s ec.aff_twin matches 1 run scoreboard players set #new_boost ec.temp 100

# Write stage + boost to correct class
execute if score @s ec.aff_class matches 1 run scoreboard players operation @s ec.affs_rg = #new_stage ec.temp
execute if score @s ec.aff_class matches 1 run scoreboard players operation @s ec.affb_rg = #new_boost ec.temp
execute if score @s ec.aff_class matches 2 run scoreboard players operation @s ec.affs_bk = #new_stage ec.temp
execute if score @s ec.aff_class matches 2 run scoreboard players operation @s ec.affb_bk = #new_boost ec.temp
execute if score @s ec.aff_class matches 3 run scoreboard players operation @s ec.affs_dn = #new_stage ec.temp
execute if score @s ec.aff_class matches 3 run scoreboard players operation @s ec.affb_dn = #new_boost ec.temp
execute if score @s ec.aff_class matches 4 run scoreboard players operation @s ec.affs_sk = #new_stage ec.temp
execute if score @s ec.aff_class matches 4 run scoreboard players operation @s ec.affb_sk = #new_boost ec.temp
execute if score @s ec.aff_class matches 5 run scoreboard players operation @s ec.affs_kt = #new_stage ec.temp
execute if score @s ec.aff_class matches 5 run scoreboard players operation @s ec.affb_kt = #new_boost ec.temp
execute if score @s ec.aff_class matches 6 run scoreboard players operation @s ec.affs_hl = #new_stage ec.temp
execute if score @s ec.aff_class matches 6 run scoreboard players operation @s ec.affb_hl = #new_boost ec.temp
execute if score @s ec.aff_class matches 7 run scoreboard players operation @s ec.affs_bl = #new_stage ec.temp
execute if score @s ec.aff_class matches 7 run scoreboard players operation @s ec.affb_bl = #new_boost ec.temp
execute if score @s ec.aff_class matches 8 run scoreboard players operation @s ec.affs_jv = #new_stage ec.temp
execute if score @s ec.aff_class matches 8 run scoreboard players operation @s ec.affb_jv = #new_boost ec.temp
execute if score @s ec.aff_class matches 9 run scoreboard players operation @s ec.affs_hp = #new_stage ec.temp
execute if score @s ec.aff_class matches 9 run scoreboard players operation @s ec.affb_hp = #new_boost ec.temp
execute if score @s ec.aff_class matches 10 run scoreboard players operation @s ec.affs_ar = #new_stage ec.temp
execute if score @s ec.aff_class matches 10 run scoreboard players operation @s ec.affb_ar = #new_boost ec.temp
execute if score @s ec.aff_class matches 11 run scoreboard players operation @s ec.affs_ht = #new_stage ec.temp
execute if score @s ec.aff_class matches 11 run scoreboard players operation @s ec.affb_ht = #new_boost ec.temp
execute if score @s ec.aff_class matches 12 run scoreboard players operation @s ec.affs_tk = #new_stage ec.temp
execute if score @s ec.aff_class matches 12 run scoreboard players operation @s ec.affb_tk = #new_boost ec.temp
execute if score @s ec.aff_class matches 13 run scoreboard players operation @s ec.affs_kn = #new_stage ec.temp
execute if score @s ec.aff_class matches 13 run scoreboard players operation @s ec.affb_kn = #new_boost ec.temp
execute if score @s ec.aff_class matches 14 run scoreboard players operation @s ec.affs_ds = #new_stage ec.temp
execute if score @s ec.aff_class matches 14 run scoreboard players operation @s ec.affb_ds = #new_boost ec.temp

# Stage-up celebration (only if stage increased)
execute unless score #new_stage ec.temp = #old_stage ec.temp if score #new_stage ec.temp > #old_stage ec.temp run function evercraft:affinity/stage_up
