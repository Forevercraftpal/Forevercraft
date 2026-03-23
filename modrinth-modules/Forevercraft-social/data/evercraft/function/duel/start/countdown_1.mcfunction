# Duel Countdown — "1..."

execute unless score #duel_active ec.var matches 1 run return 0

title @a[tag=ec.duel_active_tag] times 0 25 5
title @a[tag=ec.duel_active_tag] title {text:"1",color:"yellow",bold:true}
playsound minecraft:block.note_block.hat master @a[tag=ec.duel_active_tag] ~ ~ ~ 1 1.2

schedule function evercraft:duel/start/countdown_go 20t
