# Beastlord Spear — Detect new equip
# Runs as player who just equipped a beastlord spear (not yet tagged ec.bl_active)

tag @s add ec.bl_active

# === TIER DETECTION ===
scoreboard players set @s ec.bl_tier 1
execute if items entity @s weapon.mainhand *[custom_data~{tier:"uncommon"}] run scoreboard players set @s ec.bl_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.bl_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.bl_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.bl_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.bl_tier 6

# === SPEAR ID DETECTION ===
scoreboard players set @s ec.bl_spear 0
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"common_boneclub"}] run scoreboard players set @s ec.bl_spear 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"lance"}] run scoreboard players set @s ec.bl_spear 2
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"battlestaff"}] run scoreboard players set @s ec.bl_spear 3
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"bone_cudgel"}] run scoreboard players set @s ec.bl_spear 4
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"glaive"}] run scoreboard players set @s ec.bl_spear 5
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"infinity_lance"}] run scoreboard players set @s ec.bl_spear 6
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"gungnir_spear"}] run scoreboard players set @s ec.bl_spear 7
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"longinus"}] run scoreboard players set @s ec.bl_spear 8
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"dragonmaster_lance"}] run scoreboard players set @s ec.bl_spear 9
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"dragon_fan"}] run scoreboard players set @s ec.bl_spear 10

# === SET INITIAL WARP TIMERS (per-animal) ===
function evercraft:artifacts/beastlord/warp/reset_wolf
function evercraft:artifacts/beastlord/warp/reset_cat
function evercraft:artifacts/beastlord/warp/reset_parrot

# Initialize sub-tick counters
scoreboard players set @s ec.bl_str_tick 40
scoreboard players set @s ec.bl_warp_sub 0

# === SHIELD RESTRICTION ===
function evercraft:artifacts/beastlord/shield_check

# === ACTIVATION FEEDBACK ===
playsound minecraft:entity.wolf_puglin.ambient player @s ~ ~ ~ 0.6 1.2
title @s actionbar [{"text":"Beastlord Mode","color":"dark_green","bold":true},{"text":" — spear ready","color":"green","bold":false}]
