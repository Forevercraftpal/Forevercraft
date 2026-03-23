# Dreaming Realm — Challenge Tick
# Called from dream tick, routes to active challenge per-tick checks
# Context: called when #dr_active = 1

# === MAZE: step detection + debounce clear ===
# Clear debounce when player leaves all color blocks
execute as @a[tag=dr.maze_on_color] at @s unless block ~ ~-1 ~ red_wool unless block ~ ~-1 ~ blue_wool unless block ~ ~-1 ~ green_wool unless block ~ ~-1 ~ yellow_wool run tag @s remove dr.maze_on_color
# Check step (only when input enabled and not debounced)
execute as @a[tag=dr.in_realm,tag=dr.maze_input,tag=!dr.maze_on_color] run function evercraft:dreaming_realm/challenges/maze/check_step

# === GUARDIANS: wave completion check ===
execute as @a[tag=dr.in_realm,scores={ec.dream_ch1=1,ec.dream_ch2=0,ec.dream_wave=1..}] run function evercraft:dreaming_realm/challenges/guardians/check_wave

# === TRIAL: fragment proximity + fall catch ===
execute as @a[tag=dr.in_realm,tag=dr.trial_active] at @s run function evercraft:dreaming_realm/challenges/trial/check_fragments
