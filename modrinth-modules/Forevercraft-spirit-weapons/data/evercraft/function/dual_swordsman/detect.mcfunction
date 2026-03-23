# Dual Swordsman Detection — Activate when holding Nite or Deih in mainhand
# Run as player (@s) from detect_all
# Requires: spirit_class:"dual_swordsman" in mainhand custom_data
# Also requires: any sword in offhand (at least one hand must be Nite or Deih)

# Verify offhand has a sword
execute unless items entity @s weapon.offhand #minecraft:swords run return 0

# === ACTIVATE ===
tag @s add ec.ds_active
scoreboard players set @s ec.ds_active 1

# === TIER DETECTION (from spirit tier) ===
scoreboard players set @s ec.ds_tier 1
execute if items entity @s weapon.mainhand *[custom_data~{tier:"uncommon"}] run scoreboard players set @s ec.ds_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{tier:"rare"}] run scoreboard players set @s ec.ds_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{tier:"ornate"}] run scoreboard players set @s ec.ds_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{tier:"exquisite"}] run scoreboard players set @s ec.ds_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{tier:"mythical"}] run scoreboard players set @s ec.ds_tier 6
execute if items entity @s weapon.mainhand *[custom_data~{tier:"spirit"}] run scoreboard players set @s ec.ds_tier 7

# === TWIN CHECK (Nite + Deih) ===
scoreboard players set @s ec.ds_twin 0
# Check if offhand is the twin spirit sword
execute if items entity @s weapon.offhand *[custom_data~{spirit_class:"dual_swordsman"}] run scoreboard players set @s ec.ds_twin 1

# === STAT MODIFICATIONS ===
# Base penalty: -5 armor, -5 armor toughness (removed if twins)
execute if score @s ec.ds_twin matches 0 run attribute @s armor modifier add evercraft:spirit_armor_penalty -5.0 add_value
execute if score @s ec.ds_twin matches 0 run attribute @s armor_toughness modifier add evercraft:spirit_toughness_penalty -5.0 add_value

# Twin bonus: attack speed scales with tier (spirit tier = no cooldown)
execute if score @s ec.ds_twin matches 1 if score @s ec.ds_tier matches 1 run attribute @s attack_speed modifier add evercraft:spirit_attack_speed 0.5 add_multiplied_total
execute if score @s ec.ds_twin matches 1 if score @s ec.ds_tier matches 2 run attribute @s attack_speed modifier add evercraft:spirit_attack_speed 0.7 add_multiplied_total
execute if score @s ec.ds_twin matches 1 if score @s ec.ds_tier matches 3 run attribute @s attack_speed modifier add evercraft:spirit_attack_speed 0.9 add_multiplied_total
execute if score @s ec.ds_twin matches 1 if score @s ec.ds_tier matches 4 run attribute @s attack_speed modifier add evercraft:spirit_attack_speed 1.2 add_multiplied_total
execute if score @s ec.ds_twin matches 1 if score @s ec.ds_tier matches 5 run attribute @s attack_speed modifier add evercraft:spirit_attack_speed 1.6 add_multiplied_total
execute if score @s ec.ds_twin matches 1 if score @s ec.ds_tier matches 6 run attribute @s attack_speed modifier add evercraft:spirit_attack_speed 2.0 add_multiplied_total
execute if score @s ec.ds_twin matches 1 if score @s ec.ds_tier matches 7 run attribute @s attack_speed modifier add evercraft:spirit_attack_speed 10.0 add_multiplied_total

# Initialize Whirlwind passive timer (80 ticks = 4 seconds)
scoreboard players set @s ec.ds_whirl_cd 80

# Initialize ability cooldown
execute unless score @s ec.ds_ability_cd matches 1.. run scoreboard players set @s ec.ds_ability_cd 0

# === FEEDBACK ===
playsound minecraft:entity.warden.emerge player @s ~ ~ ~ 0.6 1.5
execute if score @s ec.ds_twin matches 1 run title @s actionbar [{"text":"Dual Swordsman","color":"dark_purple","bold":true},{"text":" — twin blades united","color":"light_purple","bold":false}]
execute if score @s ec.ds_twin matches 0 run title @s actionbar [{"text":"Dual Swordsman","color":"dark_purple","bold":true},{"text":" — blades drawn","color":"light_purple","bold":false}]
