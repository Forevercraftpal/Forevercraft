# Macro — add cook_boost ticks to the furnace's cooking_time_spent
# Read current cooking_time_spent, add boost, cap at 199 (one tick before done)
execute store result score #cook adv.temp run data get block ~ ~ ~ cooking_time_spent
$scoreboard players add #cook adv.temp $(cook_boost)

# Cap at 199 to avoid overshooting
execute if score #cook adv.temp matches 200.. run scoreboard players set #cook adv.temp 199

# Write back
execute store result block ~ ~ ~ cooking_time_spent short 1 run scoreboard players get #cook adv.temp

# Prestige P2: Efficient Fuel — add 10 ticks/s to burn time (50% less fuel consumed)
execute if entity @p[distance=..4,scores={adv.pa_blac2=1}] store result score #fuel adv.temp run data get block ~ ~ ~ lit_time_remaining
execute if entity @p[distance=..4,scores={adv.pa_blac2=1}] run scoreboard players add #fuel adv.temp 10
execute if entity @p[distance=..4,scores={adv.pa_blac2=1}] store result block ~ ~ ~ lit_time_remaining short 1 run scoreboard players get #fuel adv.temp
