# Black Market Heist — Countdown: 1
execute unless score #heist_active ec.var matches 1 run return 0

title @a[tag=ec.heist_active_tag] times 0 15 5
title @a[tag=ec.heist_active_tag] title {text:"1",color:"yellow",bold:true}
playsound minecraft:block.note_block.bass master @a[tag=ec.heist_active_tag] ~ ~ ~ 1 1.2

schedule function evercraft:heist/countdown/go 20t
