# Dreaming Realm — Memory Maze: Show Sequence
# Displays the 4-step color sequence to the player via particles and sounds
# Context: runs via schedule (uses @a[tag=dr.in_realm] to find dreamer)

# Show step 1 immediately
execute if data storage evercraft:dreaming {seq1:1} as @a[tag=dr.in_realm] at @e[type=marker,tag=dr.center,limit=1] run particle dust{color:[1.0,0.2,0.2],scale:2.0} ~-16 ~1 ~-16 0.3 0.5 0.3 0 10 normal @s
execute if data storage evercraft:dreaming {seq1:2} as @a[tag=dr.in_realm] at @e[type=marker,tag=dr.center,limit=1] run particle dust{color:[0.2,0.2,1.0],scale:2.0} ~-12 ~1 ~-16 0.3 0.5 0.3 0 10 normal @s
execute if data storage evercraft:dreaming {seq1:3} as @a[tag=dr.in_realm] at @e[type=marker,tag=dr.center,limit=1] run particle dust{color:[0.2,1.0,0.2],scale:2.0} ~-16 ~1 ~-12 0.3 0.5 0.3 0 10 normal @s
execute if data storage evercraft:dreaming {seq1:4} as @a[tag=dr.in_realm] at @e[type=marker,tag=dr.center,limit=1] run particle dust{color:[1.0,1.0,0.2],scale:2.0} ~-12 ~1 ~-12 0.3 0.5 0.3 0 10 normal @s
execute as @a[tag=dr.in_realm] run playsound block.note_block.chime master @s ~ ~ ~ 1.0 1.0

# Schedule remaining steps
schedule function evercraft:dreaming_realm/challenges/maze/show_step_2 1s
schedule function evercraft:dreaming_realm/challenges/maze/show_step_3 2s
schedule function evercraft:dreaming_realm/challenges/maze/show_step_4 3s
schedule function evercraft:dreaming_realm/challenges/maze/enable_input 4s
