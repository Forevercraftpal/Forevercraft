# Spirit Artifact Detection — Identify which spirit weapon is held and set weapon ID
# Run as player (@s) from detect_all when mainhand has spirit_artifact:true
# This runs AFTER regular class detection (spirit weapons override regular class)

tag @s add ec.sp_active

# Assign unique player ID for marker ownership (only once, persists)
execute unless score @s ec.sp_uid matches 1.. run scoreboard players add #uid_counter ec.sp_uid 1
execute unless score @s ec.sp_uid matches 1.. run scoreboard players operation @s ec.sp_uid = #uid_counter ec.sp_uid

# === WEAPON IDENTIFICATION (spirit_id in custom_data) ===
scoreboard players set @s ec.sp_weapon 0
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:1b}] run scoreboard players set @s ec.sp_weapon 1
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:2b}] run scoreboard players set @s ec.sp_weapon 2
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:3b}] run scoreboard players set @s ec.sp_weapon 3
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:4b}] run scoreboard players set @s ec.sp_weapon 4
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:5b}] run scoreboard players set @s ec.sp_weapon 5
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:6b}] run scoreboard players set @s ec.sp_weapon 6
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:7b}] run scoreboard players set @s ec.sp_weapon 7
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:8b}] run scoreboard players set @s ec.sp_weapon 8
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:9b}] run scoreboard players set @s ec.sp_weapon 9
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:10b}] run scoreboard players set @s ec.sp_weapon 10
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:11b}] run scoreboard players set @s ec.sp_weapon 11
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:12b}] run scoreboard players set @s ec.sp_weapon 12
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:13b}] run scoreboard players set @s ec.sp_weapon 13
execute if items entity @s weapon.mainhand *[custom_data~{spirit_id:14b}] run scoreboard players set @s ec.sp_weapon 14

# === INITIALIZE COOLDOWNS (unset scores don't match ..0 range checks) ===
execute unless score @s ec.sp_cd1 matches -2147483648.. run scoreboard players set @s ec.sp_cd1 0
execute unless score @s ec.sp_cd2 matches -2147483648.. run scoreboard players set @s ec.sp_cd2 0
execute unless score @s ec.sp_timer matches -2147483648.. run scoreboard players set @s ec.sp_timer 0

# === TIER DETECTION ===
scoreboard players set @s ec.sp_tier 1
execute if items entity @s weapon.mainhand *[custom_data~{tier:"uncommon"}] run scoreboard players set @s ec.sp_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.sp_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.sp_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.sp_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.sp_tier 6
execute if items entity @s weapon.mainhand *[custom_data~{tier:"spirit"}] run scoreboard players set @s ec.sp_tier 7

# === EFFECTIVENESS SCALING (tier-based damage/healing multiplier) ===
# Base effectiveness by tier: Common 50%, Uncommon 60%, Rare 70%, Ornate 80%, Exquisite 90%, Mythical 100%, Spirit 125%
scoreboard players set @s ec.sp_eff 50
execute if score @s ec.sp_tier matches 2 run scoreboard players set @s ec.sp_eff 60
execute if score @s ec.sp_tier matches 3 run scoreboard players set @s ec.sp_eff 70
execute if score @s ec.sp_tier matches 4 run scoreboard players set @s ec.sp_eff 80
execute if score @s ec.sp_tier matches 5 run scoreboard players set @s ec.sp_eff 90
execute if score @s ec.sp_tier matches 6 run scoreboard players set @s ec.sp_eff 100
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_eff 125

# === TWIN CHECK ===
scoreboard players set @s ec.sp_twin 0
# Check if offhand also has a spirit artifact (twin pair)
execute if items entity @s weapon.offhand *[custom_data~{spirit_artifact:true}] run scoreboard players set @s ec.sp_twin 1

# === 25% SOLO BOOST CHECK ===
scoreboard players set @s ec.sp_boosted 0
execute if items entity @s weapon.mainhand *[custom_data~{spirit_boosted:true}] run scoreboard players set @s ec.sp_boosted 1

# === APPLY 25% BOOST TO EFFECTIVENESS (Spirit 125% → 150%) ===
execute if score @s ec.sp_boosted matches 1 run scoreboard players operation @s ec.sp_eff += #25 ec.const

# === DISPATCH TO WEAPON-SPECIFIC DETECT ===
execute if score @s ec.sp_weapon matches 1 run function evercraft:spirit/abilities/hollow_fangs/detect
execute if score @s ec.sp_weapon matches 2 run function evercraft:spirit/abilities/voidpiercer/detect
execute if score @s ec.sp_weapon matches 3 run function evercraft:spirit/abilities/firebrand/detect
execute if score @s ec.sp_weapon matches 4 run function evercraft:spirit/abilities/zephyr_edge/detect
execute if score @s ec.sp_weapon matches 5 run function evercraft:spirit/abilities/nite/detect
execute if score @s ec.sp_weapon matches 6 run function evercraft:spirit/abilities/whispering_spear/detect
execute if score @s ec.sp_weapon matches 7 run function evercraft:spirit/abilities/ashcrown_mace/detect
execute if score @s ec.sp_weapon matches 8 run function evercraft:spirit/abilities/ellegaard_trident/detect
execute if score @s ec.sp_weapon matches 9 run function evercraft:spirit/abilities/pharaoh_fist/detect
execute if score @s ec.sp_weapon matches 10 run function evercraft:spirit/abilities/lifewoven_branch/detect
execute if score @s ec.sp_weapon matches 11 run function evercraft:spirit/abilities/sabrewing/detect
execute if score @s ec.sp_weapon matches 12 run function evercraft:spirit/abilities/dragonheart_sword/detect
execute if score @s ec.sp_weapon matches 13 run function evercraft:spirit/abilities/bulwark_shield/detect
execute if score @s ec.sp_weapon matches 14 run function evercraft:spirit/abilities/royal_trident/detect

# === INITIALIZE PROGRESSION TRACKING ===
# Ensure kill streak scores exist for this player (prevents > comparison failing on unset scores)
execute unless score @s ec.sp_cur_streak matches -2147483648.. run scoreboard players set @s ec.sp_cur_streak 0
execute unless score @s ec.sp_kill_streak matches -2147483648.. run scoreboard players set @s ec.sp_kill_streak 0

# Sync biome count from journal (tracks even when weapon not held)
scoreboard players operation @s ec.sp_biomes > @s jn.biome_count

# === ACTIVATION FEEDBACK ===
playsound minecraft:entity.warden.emerge player @s ~ ~ ~ 0.6 1.5
