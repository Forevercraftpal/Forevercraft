# Guild Menu — Send supply drop to allied guild
# @s = player, #supply_tier ec.temp = 1/2/3, #supply_cost ec.temp = 5/15/30
# @s ec.gd_supply_tgt = target guild ID

# Check player has enough coins
execute if score @s ec.coins < #supply_cost ec.temp run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Not enough Forever Coins!",color:"red"}]
execute if score @s ec.coins < #supply_cost ec.temp run return 0

# Deduct coins
scoreboard players operation @s ec.coins -= #supply_cost ec.temp

# Copy target guild ID to fake player for safe comparison in execute as @a
scoreboard players operation #supply_tgt ec.temp = @s ec.gd_supply_tgt

# Find a random online member of the target guild
scoreboard players set #supply_found ec.temp 0
execute as @a if score @s ec.guild_id = #supply_tgt ec.temp at @s run function evercraft:guild/gui/menu/supply_deliver

# Get tier name and announce
execute if score #supply_tier ec.temp matches 1 run data modify storage evercraft:guild temp.supply_tier_name set value "Rations"
execute if score #supply_tier ec.temp matches 2 run data modify storage evercraft:guild temp.supply_tier_name set value "Armaments"
execute if score #supply_tier ec.temp matches 3 run data modify storage evercraft:guild temp.supply_tier_name set value "War Chest"

# Get target guild name
scoreboard players operation #Search ec.guild_id = @s ec.gd_supply_tgt
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild temp.supply_target_name set from entity @s data.name

# Announce to sender's guild
function evercraft:guild/gui/menu/supply_announce with storage evercraft:guild temp

# Clear supply select mode and return to allies page
tag @s remove ec.guild_supply_select
function evercraft:guild/gui/menu/refresh_allies

# Sound
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
