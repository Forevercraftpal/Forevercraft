# Fishing Derby — Score a Catch
# Called from fishing/ref/on_catch.mcfunction when derby is active
# Run as the player who caught the fish

scoreboard players add @s cal.derby_score 1

# Visual feedback
title @s actionbar [{text:"Catch! Score: ",color:"aqua"},{score:{name:"@s",objective:"cal.derby_score"},color:"white",bold:true}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1.8
