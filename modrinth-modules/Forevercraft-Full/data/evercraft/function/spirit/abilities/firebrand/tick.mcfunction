# Firebrand — Per-Tick Processing
# Run as @s at @s when holding spirit weapon ID 3
# Passives: Tyrant's Rage (below 30% HP), death prevention, Rampage timer

# === TYRANT'S RAGE (below 30% HP: +50% damage, +30% attack speed, 15% lifesteal) ===
# Check HP percentage
execute store result score #fb_hp ec.temp run attribute @s max_health get 100
scoreboard players operation #fb_hp ec.temp *= #30 ec.const
scoreboard players operation #fb_hp ec.temp /= #100 ec.const
execute store result score #fb_cur ec.temp run data get entity @s Health 100
# Spirit tier: threshold is 40% instead of 30%
execute if score @s ec.sp_tier matches 7 store result score #fb_hp ec.temp run attribute @s max_health get 100
execute if score @s ec.sp_tier matches 7 run scoreboard players operation #fb_hp ec.temp *= #40 ec.const
execute if score @s ec.sp_tier matches 7 run scoreboard players operation #fb_hp ec.temp /= #100 ec.const

# Apply/remove Tyrant's Rage based on HP
execute if score #fb_cur ec.temp <= #fb_hp ec.temp unless entity @s[tag=ec.sp_tyrant_rage] run function evercraft:spirit/abilities/firebrand/rage_on
execute if score #fb_cur ec.temp > #fb_hp ec.temp if entity @s[tag=ec.sp_tyrant_rage] run function evercraft:spirit/abilities/firebrand/rage_off

# === DEATH PREVENTION COOLDOWN ===
execute if score @s ec.sp_charges matches 1.. run scoreboard players remove @s ec.sp_charges 1

# === RAMPAGE TIMER ===
execute if score @s ec.sp_rampage matches 1.. run scoreboard players remove @s ec.sp_rampage 1
execute if entity @s[tag=ec.sp_rampage_active,scores={ec.sp_rampage=..0}] run function evercraft:spirit/abilities/firebrand/rampage_end
