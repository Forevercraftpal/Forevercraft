# Black Market Heist — Countdown: GO!
execute unless score #heist_active ec.var matches 1 run return 0

title @a[tag=ec.heist_active_tag] times 0 20 10
title @a[tag=ec.heist_active_tag] title {text:"GO!",color:"green",bold:true}
playsound minecraft:entity.ender_dragon.growl master @a[tag=ec.heist_active_tag] ~ ~ ~ 0.5 1.5

# Remove resistance (countdown protection ends)
effect clear @a[tag=ec.heist_active_tag] minecraft:resistance
effect clear @a[tag=ec.heist_active_tag] minecraft:blindness

# Give slow falling to prevent fall damage false-triggers
effect give @a[tag=ec.heist_active_tag] minecraft:slow_falling 70 0 true

# Give absorption 1 (4 yellow HP) as death buffer — prevents one-shot kills
# so HurtTime detection always fires before actual death. Lasts full heist.
effect give @a[tag=ec.heist_active_tag] minecraft:absorption 70 1 true

# Remove the barrier wall at z=8 (start gate)
# Center marker is at ~0 ~1 ~30, so z=8 is at ~0 ~0 ~-22 relative to center
execute at @e[type=marker,tag=heist.center,limit=1] run fill ~-4 ~0 ~-22 ~4 ~4 ~-22 minecraft:air
