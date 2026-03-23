advancement revoke @s only evercraft:treasure/mechanics/charm/mythical

advancement revoke @s only evercraft:treasure/mechanics/charm/timer
scoreboard players add @s ec.charm_timer 12000
title @s actionbar {color:"gray",text:"Activated Mythical Charm!"}
playsound minecraft:ui.toast.challenge_complete ambient @a[distance=..7] ~ ~ ~0.5 0 1