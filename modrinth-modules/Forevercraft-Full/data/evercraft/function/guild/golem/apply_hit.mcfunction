# Guild — Apply scaled snow golem snowball damage
# Run as: snowball (gs.snowball), at snowball position
# Damage = 3 + floor(guild_level * 17 / 100), max 20

# Find nearest guild golem to get guild ID
scoreboard players operation #Search ec.guild_id = @e[type=snow_golem,tag=ec.gs_golem,sort=nearest,limit=1,distance=..16] ec.guild_id

# Read guild level from marker at 0 -61 0
execute positioned 0 -61 0 store result score #gs_level ec.temp run data get entity @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] data.level

# Compute damage: 3 + floor(level * 17 / 100)
scoreboard players operation #gs_level ec.temp *= #17 ec.const
scoreboard players operation #gs_level ec.temp /= #100 ec.const
scoreboard players add #gs_level ec.temp 3

# Clamp to max 20
execute if score #gs_level ec.temp matches 21.. run scoreboard players set #gs_level ec.temp 20

# Store for macro
execute store result storage evercraft:guild temp.gs_dmg int 1 run scoreboard players get #gs_level ec.temp

# Deal damage and kill snowball
function evercraft:guild/golem/do_damage with storage evercraft:guild temp
kill @s
