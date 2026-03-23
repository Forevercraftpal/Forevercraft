# Duel Countdown — "3..."
# Runs immediately when duel starts

title @a[tag=ec.duel_active_tag] times 0 25 5
title @a[tag=ec.duel_active_tag] title {text:"3",color:"red",bold:true}
playsound minecraft:block.note_block.hat master @a[tag=ec.duel_active_tag] ~ ~ ~ 1 0.8

schedule function evercraft:duel/start/countdown_2 20t
