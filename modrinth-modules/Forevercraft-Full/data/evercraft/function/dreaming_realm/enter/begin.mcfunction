# Dreaming Realm — Begin Entry (Orchestrator)
# Context: as @s = player entering dream, at @s = player's bed position

# Set global and per-player active flags
scoreboard players set #dr_active ec.var 1
scoreboard players set @s ec.dream_active 1
tag @s add dr.in_realm

# Reset challenge state
scoreboard players set @s ec.dream_ch1 0
scoreboard players set @s ec.dream_ch2 0
scoreboard players set @s ec.dream_ch3 0
scoreboard players set @s ec.dream_frags 0
scoreboard players set @s ec.dream_seq 0
scoreboard players set @s ec.dream_wave 0
scoreboard players set @s ec.dream_lore 0

# Save return position (marker entity at player's bed position)
function evercraft:dreaming_realm/enter/save_position

# Build the arena at Y=300 above player
function evercraft:dreaming_realm/build/construct

# Place lore displays in the Lore Chamber
function evercraft:dreaming_realm/lore/place_lore

# Teleport player to arena center
tp @s ~ 302 ~ 0 0

# Apply effects, start timer, show bossbar
function evercraft:dreaming_realm/enter/setup

# Announce to all players
function evercraft:dreaming_realm/enter/announce

# Start intro narration (delayed messages)
function evercraft:dreaming_realm/enter/intro
