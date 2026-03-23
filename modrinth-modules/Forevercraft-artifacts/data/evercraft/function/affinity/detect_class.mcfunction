# === DETECT HELD CLASS WEAPON ===
# Run as @a every tick, AFTER artifacts/weapons/detect_all
# Reads existing active scores/tags, sets ec.aff_class (1-14) or 0

scoreboard players set @s ec.aff_class 0
scoreboard players set @s ec.aff_spirit 0
scoreboard players set @s ec.aff_twin 0

# Classes with existing active scores
execute if score @s ec.rg_active matches 1.. run scoreboard players set @s ec.aff_class 1
execute if score @s ec.bk_active matches 1.. run scoreboard players set @s ec.aff_class 2
execute if score @s ec.dn_active matches 1.. run scoreboard players set @s ec.aff_class 3
execute if score @s ec.sk_active matches 1.. run scoreboard players set @s ec.aff_class 4
execute if score @s ec.kt_active matches 1.. run scoreboard players set @s ec.aff_class 5
execute if score @s ec.bl_active matches 1.. run scoreboard players set @s ec.aff_class 7
execute if score @s ec.jv_active matches 1.. run scoreboard players set @s ec.aff_class 8
execute if score @s ec.ht_active matches 1.. run scoreboard players set @s ec.aff_class 11
execute if score @s ec.ds_active matches 1.. run scoreboard players set @s ec.aff_class 14

# Classes without active scores — detect via held item custom_data
# Only check if no class set yet (avoids overwriting higher-priority detection)
execute if score @s ec.aff_class matches 0 if items entity @s weapon.mainhand *[custom_data~{healer:true}] run scoreboard players set @s ec.aff_class 6
execute if score @s ec.aff_class matches 0 if items entity @s weapon.mainhand *[custom_data~{hoplite:true}] run scoreboard players set @s ec.aff_class 9
execute if score @s ec.aff_class matches 0 if items entity @s weapon.mainhand bow[custom_data~{archer:true}] run scoreboard players set @s ec.aff_class 10
execute if score @s ec.aff_class matches 0 if items entity @s weapon.mainhand *[custom_data~{shield_artifact:true}] run scoreboard players set @s ec.aff_class 12
execute if score @s ec.aff_class matches 0 if items entity @s weapon.mainhand *[custom_data~{knight:true}] run scoreboard players set @s ec.aff_class 13

# Early exit: no class weapon held — skip spirit/twin/boost checks (~20 commands saved)
execute if score @s ec.aff_class matches 0 run scoreboard players set @s ec.aff_boost 0
execute if score @s ec.aff_class matches 0 run return 0

# Spirit weapon + Twin detection
# ec.sp_active is a TAG (not a score), ec.sp_twin is a score
execute if entity @s[tag=ec.sp_active] run scoreboard players set @s ec.aff_spirit 1
execute if score @s ec.sp_twin matches 1 run scoreboard players set @s ec.aff_twin 1

# Copy current class boost to generic ec.aff_boost for damage scaling
scoreboard players set @s ec.aff_boost 0
execute if score @s ec.aff_class matches 1 run scoreboard players operation @s ec.aff_boost = @s ec.affb_rg
execute if score @s ec.aff_class matches 2 run scoreboard players operation @s ec.aff_boost = @s ec.affb_bk
execute if score @s ec.aff_class matches 3 run scoreboard players operation @s ec.aff_boost = @s ec.affb_dn
execute if score @s ec.aff_class matches 4 run scoreboard players operation @s ec.aff_boost = @s ec.affb_sk
execute if score @s ec.aff_class matches 5 run scoreboard players operation @s ec.aff_boost = @s ec.affb_kt
execute if score @s ec.aff_class matches 6 run scoreboard players operation @s ec.aff_boost = @s ec.affb_hl
execute if score @s ec.aff_class matches 7 run scoreboard players operation @s ec.aff_boost = @s ec.affb_bl
execute if score @s ec.aff_class matches 8 run scoreboard players operation @s ec.aff_boost = @s ec.affb_jv
execute if score @s ec.aff_class matches 9 run scoreboard players operation @s ec.aff_boost = @s ec.affb_hp
execute if score @s ec.aff_class matches 10 run scoreboard players operation @s ec.aff_boost = @s ec.affb_ar
execute if score @s ec.aff_class matches 11 run scoreboard players operation @s ec.aff_boost = @s ec.affb_ht
execute if score @s ec.aff_class matches 12 run scoreboard players operation @s ec.aff_boost = @s ec.affb_tk
execute if score @s ec.aff_class matches 13 run scoreboard players operation @s ec.aff_boost = @s ec.affb_kn
execute if score @s ec.aff_class matches 14 run scoreboard players operation @s ec.aff_boost = @s ec.affb_ds
