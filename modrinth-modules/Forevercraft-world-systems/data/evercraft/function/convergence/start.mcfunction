# Harmonic Convergence — START
# Activates the convergence overlay (stacks on top of active world event)

# Set state
scoreboard players set #conv_active ec.var 1
scoreboard players set #conv_timer ec.var 600
scoreboard players set #conv_flag ec.var 1

# Apply Dream Rate modifier (+2.0 global, stacks with world event modifier)
execute as @a run attribute @s luck modifier remove ec_convergence
execute as @a run attribute @s luck modifier add ec_convergence 2.0 add_value

# Dispatch to themed announcement
execute if score #conv_id ec.var matches 1 run function evercraft:convergence/announce/celestial_tide
execute if score #conv_id ec.var matches 2 run function evercraft:convergence/announce/veil_of_embers
execute if score #conv_id ec.var matches 3 run function evercraft:convergence/announce/frozen_aurora
execute if score #conv_id ec.var matches 4 run function evercraft:convergence/announce/bloom_of_eternity

# Start 1s tick countdown (independent of world events tick rate)
schedule function evercraft:convergence/tick 1s
