# Luck Potion Dream Rate Bonus — score-based amplifier read
# Only called when player has active Luck effect (gated by apply.mcfunction)
# OPT: Single data get for amplifier score → 1 NBT read instead of up to 7

# Neutralize vanilla Luck effect's attribute modifier to prevent double-counting.
attribute @s luck modifier remove minecraft:effect.luck

# Read amplifier into score (0-5). If active_effects list doesn't have amplifier field, defaults to 0.
execute store result score #luck_amp ec.temp run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier

# Dream rate = amplifier + 1 (Luck I = +1, Luck VI = +6)
scoreboard players add #luck_amp ec.temp 1

# Store as attribute modifier value
execute store result storage evercraft:luck_temp amp_value double 1 run scoreboard players get #luck_amp ec.temp
tag @s add ec.has_time_dr
function evercraft:luck_buffs/apply_potion_value with storage evercraft:luck_temp
