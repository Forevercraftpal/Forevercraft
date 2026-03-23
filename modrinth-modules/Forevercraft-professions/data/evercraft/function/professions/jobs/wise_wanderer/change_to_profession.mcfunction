# Change villager to Wise Wanderer profession (replaces Kiosk)
# XP-based crate shop with floating GUI on right-click
tag @s add more_professions_verified
tag @s add more_professions_wise_wanderer

# Set custom name
data modify entity @s CustomName set value {text:"Wise Wanderer",color:"gold",bold:true}
data modify entity @s CustomNameVisible set value 0b

# Initialize scoreboard values
scoreboard players add @s more_professions_offers 0
scoreboard players add @s more_professions_trade_progress 0
scoreboard players add @s more_professions_visible_trade_progress 0

# Set villager to nitwit so vanilla trade UI never opens — custom GUI handles everything
# Right-click detection uses talked_to_villager stat (nitwit still increments it)
data modify entity @s VillagerData.profession set value "minecraft:nitwit"

# Set Xp to 1 so the grace period wipe (Xp:0 + no job_site = wipe after 5s) doesn't fire
# Nitwits never get a job_site, so without this the profession gets stripped
data modify entity @s Xp set value 1

# Kill any legacy WW.Detector interaction entities
execute at @s run kill @e[type=minecraft:interaction,tag=WW.Detector,distance=..5]
