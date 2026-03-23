# Dreaming Realm — Cleanup State
# Resets all per-player and global dream state
# Context: as @s = player exiting dream

# Remove per-visit tags
tag @s remove dr.in_realm
tag @s remove dr.maze_input
tag @s remove dr.maze_on_color
tag @s remove dr.trial_active

# Reset per-player scores
scoreboard players set @s ec.dream_active 0
scoreboard players set @s ec.dream_timer 0
scoreboard players set @s ec.dream_ch1 0
scoreboard players set @s ec.dream_ch2 0
scoreboard players set @s ec.dream_ch3 0
scoreboard players set @s ec.dream_frags 0
scoreboard players set @s ec.dream_seq 0
scoreboard players set @s ec.dream_wave 0
scoreboard players set @s ec.dream_lore 0

# Reset global active flag
scoreboard players set #dr_active ec.var 0
scoreboard players set #dr_atmo ec.var 0

# Reset storage
data merge storage evercraft:dreaming {lucky_dream: false, challenges_complete: 0}

# Kill return marker (safety net — may already be gone)
kill @e[type=marker,tag=dr.return]

# Safety net: kill any leftover dream entities
kill @e[tag=ec.dream_mob]
kill @e[tag=ec.dream_entity]
kill @e[type=marker,tag=dr.center]
