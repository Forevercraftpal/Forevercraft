# Competition Score — Forging Point
# Called from forging advancement when competition type 3 is active
# Runs as the player who crafted the item
# Points passed in via #comp_forge_pts ec.temp before calling

execute unless score #comp_active ec.var matches 3 run return 0

# Add points (pre-set in ec.temp by the advancement/callback)
scoreboard players operation @s ec.comp_score += #comp_forge_pts ec.temp
scoreboard players set @s ec.comp_today 1

# Feedback
title @s actionbar [{text:"+",color:"green"},{score:{name:"#comp_forge_pts",objective:"ec.temp"},color:"green"},{text:" Forge! Score: ",color:"gold"},{score:{name:"@s",objective:"ec.comp_score"},color:"white",bold:true}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1.8
