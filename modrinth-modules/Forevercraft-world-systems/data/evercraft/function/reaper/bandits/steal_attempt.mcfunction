# Reaper — Bandit Steal Attempt
# Called when a bandit hits a player during active bandits
# Knocks the held item loose as a dropped entity near the nearest bandit
# Run as player at player

# 20% chance to steal on hit
execute store result score #rp_roll rp.temp run random value 1..5
execute unless score #rp_roll rp.temp matches 1 run return 0

# Check player is holding something (mainhand)
execute unless data entity @s SelectedItem run return 0

# Copy held item to storage, then spawn it as a dropped item near the nearest bandit
data modify storage evercraft:reaper stolen_item set from entity @s SelectedItem

# Drop the item near the closest bandit (3s pickup delay — player can recover by killing them)
execute as @e[tag=rp.bandit,sort=nearest,limit=1] at @s run summon item ~ ~1 ~ {Tags:["rp.stolen"],PickupDelay:60,Age:0}
data modify entity @e[tag=rp.stolen,limit=1] Item set from storage evercraft:reaper stolen_item
tag @e[tag=rp.stolen] remove rp.stolen

# Remove from player's hand
item replace entity @s weapon.mainhand with minecraft:air

# Notify
tellraw @s [{text:"  ",color:"dark_gray"},{text:"⚠ ",color:"red"},{text:"A bandit knocked your weapon from your hands!",color:"red",italic:true}]
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5 0.5
