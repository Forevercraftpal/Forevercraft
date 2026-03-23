# Guild Expedition — Progress Tick
# @s = guild marker with state 2 (ACTIVE)

# Check if expedition timer expired
execute store result score #gexp_now ec.temp run time query gametime
execute store result score #gexp_ends ec.temp run data get entity @s data.expedition.ends_at
execute if score #gexp_now ec.temp >= #gexp_ends ec.temp run return run function evercraft:guild/expedition/end

# Read target biome and guild ID
execute store result score #gexp_target ec.temp run data get entity @s data.expedition.target_biome
execute store result score #Search ec.guild_id run data get entity @s data.id

# Reset per-tick point accumulator
scoreboard players set #gexp_points ec.temp 0

# Check each online guild member for biome presence + activity
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id at @s run function evercraft:guild/expedition/progress/check_player

# Apply accumulated points to marker progress
execute if score #gexp_points ec.temp matches 1.. run function evercraft:guild/expedition/progress/apply
