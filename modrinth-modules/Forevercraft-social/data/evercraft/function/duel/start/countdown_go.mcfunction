# Duel Countdown — "FIGHT!"

execute unless score #duel_active ec.var matches 1 run return 0

title @a[tag=ec.duel_active_tag] times 0 30 10
title @a[tag=ec.duel_active_tag] title {text:"FIGHT!",color:"green",bold:true}
playsound minecraft:entity.ender_dragon.growl master @a[tag=ec.duel_active_tag] ~ ~ ~ 0.5 1.5

# Remove Resistance — fight begins
effect clear @a[tag=ec.duel_active_tag] minecraft:resistance
effect clear @a[tag=ec.duel_active_tag] minecraft:blindness
