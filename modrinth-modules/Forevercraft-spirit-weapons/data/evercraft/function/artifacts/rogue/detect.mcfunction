# Rogue Dagger Detection — Identify tier and initialize swing timer
# Run as player who just equipped a rogue dagger in mainhand

tag @s add ec.rg_active

# === ACTIVATION FEEDBACK ===
playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 0.8 1.8

# === TIER DETECTION ===
# Default to tier 1 (fallback if integer matching fails due to NBT type)
scoreboard players set @s ec.rg_tier 1
# Each loot table sets rogue_tier:1-6 in custom_data
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:1b}] run scoreboard players set @s ec.rg_tier 1
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:2b}] run scoreboard players set @s ec.rg_tier 2
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:3b}] run scoreboard players set @s ec.rg_tier 3
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:4b}] run scoreboard players set @s ec.rg_tier 4
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:5b}] run scoreboard players set @s ec.rg_tier 5
execute if items entity @s weapon.mainhand *[custom_data~{rogue_tier:6b}] run scoreboard players set @s ec.rg_tier 6

# === DUAL WIELD CHECK ===
scoreboard players set @s ec.rg_dual 0
execute if items entity @s weapon.offhand *[custom_data~{rogue:true}] run scoreboard players set @s ec.rg_dual 1

# === SET INITIAL SWING TIMER ===
# Guaranteed fallback — always set a timer even if tier matching had issues
scoreboard players set @s ec.rg_swing 15
# Single wield timers
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 1 run scoreboard players set @s ec.rg_swing 15
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 2 run scoreboard players set @s ec.rg_swing 12
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 3 run scoreboard players set @s ec.rg_swing 9
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 4 run scoreboard players set @s ec.rg_swing 7
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 5 run scoreboard players set @s ec.rg_swing 5
execute if score @s ec.rg_dual matches 0 if score @s ec.rg_tier matches 6 run scoreboard players set @s ec.rg_swing 4

# Dual wield timers (70% of normal)
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 1 run scoreboard players set @s ec.rg_swing 11
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 2 run scoreboard players set @s ec.rg_swing 9
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 3 run scoreboard players set @s ec.rg_swing 7
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 4 run scoreboard players set @s ec.rg_swing 5
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 5 run scoreboard players set @s ec.rg_swing 4
execute if score @s ec.rg_dual matches 1 if score @s ec.rg_tier matches 6 run scoreboard players set @s ec.rg_swing 3

# === SCALE BY ATTACK SPEED ===
# Formula: interval = base × reference_speed / actual_speed
# Rogue reference: 60 (effective 0.6 attack speed × 100)
execute store result score #aspd ec.temp run attribute @s attack_speed get 100
scoreboard players operation @s ec.rg_swing *= #60 ec.const
scoreboard players operation @s ec.rg_swing /= #aspd ec.temp
execute if score @s ec.rg_swing matches ..0 run scoreboard players set @s ec.rg_swing 1

# === MODE FEEDBACK ===
execute if score @s ec.rg_dual matches 1 run title @s actionbar [{"text":"Dual Daggers","color":"dark_purple","bold":true},{"text":" — daggers ready","color":"#9B59B6","bold":false}]
execute unless score @s ec.rg_dual matches 1 run title @s actionbar [{"text":"Rogue Mode","color":"dark_purple","bold":true},{"text":" — dagger ready","color":"#9B59B6","bold":false}]
