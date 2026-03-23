# ============================================================
# Quick Stash — Report results to player
# Run as: player
# ============================================================

# Stashed items, no failures
execute if score @s hs.stashed matches 1.. if score @s hs.failed matches 0 run title @s actionbar [{text:"Stashed ",color:"green"},{score:{name:"@s",objective:"hs.stashed"}},{text:" items!",color:"green"}]

# Stashed some, some failed
execute if score @s hs.stashed matches 1.. if score @s hs.failed matches 1.. run title @s actionbar [{text:"Stashed ",color:"green"},{score:{name:"@s",objective:"hs.stashed"}},{text:" items ",color:"green"},{text:"| ",color:"dark_gray"},{score:{name:"@s",objective:"hs.failed"}},{text:" had nowhere to go",color:"red"}]

# None stashed, some failed
execute if score @s hs.stashed matches 0 if score @s hs.failed matches 1.. run title @s actionbar [{text:"No containers matched your items!",color:"red"}]

# Nothing to stash at all
execute if score @s hs.stashed matches 0 if score @s hs.failed matches 0 run title @s actionbar [{text:"Nothing to stash!",color:"gray"}]

# Sound
execute if score @s hs.stashed matches 1.. run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 0.7
execute if score @s hs.stashed matches 0 run playsound minecraft:entity.villager.no master @s ~ ~ ~ 0.5 1.0
