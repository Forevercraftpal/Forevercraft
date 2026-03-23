execute as @e[type=#evercraft:treasure/targets,tag=!ec.big,distance=..6] run effect give @s wither 3 2 true

advancement revoke @s only evercraft:treasure/mechanics/big/fall

particle block{block_state:"minecraft:dirt"} ~ ~ ~ 3 0.2 3 0.4 100 normal

playsound block.rooted_dirt.break block @a[distance=..15] ~ ~ ~ 1 1 1