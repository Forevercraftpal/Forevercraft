# Memory Maze — Show Step 3
execute if data storage evercraft:dreaming {seq3:1} as @a[tag=dr.in_realm] at @e[type=marker,tag=dr.center,limit=1] run particle dust{color:[1.0,0.2,0.2],scale:2.0} ~-16 ~1 ~-16 0.3 0.5 0.3 0 10 normal @s
execute if data storage evercraft:dreaming {seq3:2} as @a[tag=dr.in_realm] at @e[type=marker,tag=dr.center,limit=1] run particle dust{color:[0.2,0.2,1.0],scale:2.0} ~-12 ~1 ~-16 0.3 0.5 0.3 0 10 normal @s
execute if data storage evercraft:dreaming {seq3:3} as @a[tag=dr.in_realm] at @e[type=marker,tag=dr.center,limit=1] run particle dust{color:[0.2,1.0,0.2],scale:2.0} ~-16 ~1 ~-12 0.3 0.5 0.3 0 10 normal @s
execute if data storage evercraft:dreaming {seq3:4} as @a[tag=dr.in_realm] at @e[type=marker,tag=dr.center,limit=1] run particle dust{color:[1.0,1.0,0.2],scale:2.0} ~-12 ~1 ~-12 0.3 0.5 0.3 0 10 normal @s
execute as @a[tag=dr.in_realm] run playsound block.note_block.chime master @s ~ ~ ~ 1.0 1.4
