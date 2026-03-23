# Lore Exchange — Confirm exchange (give Lore Shards)
# Run as: player with exchange GUI open

# Check if enough pieces deposited
execute unless score @s lx.count >= @s lx.required run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Not enough pieces deposited yet!",color:"red"}]

# Give Lore Shards based on reward amount
execute if score @s lx.reward matches 1 run give @s minecraft:echo_shard[minecraft:custom_name={text:"Lore Shard",color:"yellow",italic:false},minecraft:enchantment_glint_override=true,minecraft:custom_data={lore_shard:true}] 1
execute if score @s lx.reward matches 2 run give @s minecraft:echo_shard[minecraft:custom_name={text:"Lore Shard",color:"yellow",italic:false},minecraft:enchantment_glint_override=true,minecraft:custom_data={lore_shard:true}] 2
execute if score @s lx.reward matches 3 run give @s minecraft:echo_shard[minecraft:custom_name={text:"Lore Shard",color:"yellow",italic:false},minecraft:enchantment_glint_override=true,minecraft:custom_data={lore_shard:true}] 3
execute if score @s lx.reward matches 4 run give @s minecraft:echo_shard[minecraft:custom_name={text:"Lore Shard",color:"yellow",italic:false},minecraft:enchantment_glint_override=true,minecraft:custom_data={lore_shard:true}] 4

# Feedback
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0.1 10

# Notification
execute store result storage evercraft:lore_exchange temp.reward int 1 run scoreboard players get @s lx.reward
function evercraft:codex/hub/lore/exchange/notify with storage evercraft:lore_exchange temp

# Reset state for next exchange
scoreboard players set @s lx.count 0
scoreboard players set @s lx.tier 0
scoreboard players set @s lx.required 0
scoreboard players set @s lx.reward 0

# Refresh GUI to empty state
function evercraft:codex/hub/lore/exchange/refresh
