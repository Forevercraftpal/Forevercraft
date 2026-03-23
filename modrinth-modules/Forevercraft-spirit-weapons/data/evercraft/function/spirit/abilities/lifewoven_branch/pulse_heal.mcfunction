# Lifewoven Branch — Pulse Heal
# Run as target ally at their position
# Check if below 25% HP, if so heal 8 HP

# Get max health and current health
execute store result score #lw_max ec.temp run attribute @s max_health get 100
execute store result score #lw_cur ec.temp run data get entity @s Health 100

# Calculate 25% threshold
scoreboard players operation #lw_thresh ec.temp = #lw_max ec.temp
scoreboard players operation #lw_thresh ec.temp /= #4 ec.const

# Only heal if below 25%
execute unless score #lw_cur ec.temp < #lw_thresh ec.temp run return 0

# Heal 8 HP (4 hearts)
effect give @s instant_health 1 1 true

# Set auto-pulse cooldown on the weapon holder (600 ticks = 30s)
# Need to reference back to the weapon holder — use nearest player with ec.sp_active tag
execute as @a[tag=ec.sp_active,limit=1,sort=nearest] run scoreboard players set @s ec.sp_charges 600

# VFX
particle heart ~ ~2 ~ 0.3 0.3 0.3 0.05 3
particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 0.05 5
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 0.6 1.5

# Notify the healer
execute as @a[tag=ec.sp_active,limit=1,sort=nearest] run title @s actionbar [{"text":"Auto-Pulse healed an ally!","color":"green"}]
