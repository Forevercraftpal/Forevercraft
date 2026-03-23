advancement revoke @s only evercraft:treasure/mechanics/charm/epic


advancement revoke @s only evercraft:treasure/mechanics/charm/timer

scoreboard players add @s ec.charm_timer 6000

title @s actionbar {color:"gray",text:"Activated Epic Charm!"}

playsound minecraft:block.respawn_anchor.set_spawn ambient @a[distance=..7] ~ ~ ~1 0.5 1