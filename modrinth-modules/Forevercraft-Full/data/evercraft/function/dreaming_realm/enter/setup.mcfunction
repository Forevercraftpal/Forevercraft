# Dreaming Realm — Setup Effects, Timer, Bossbar
# Context: as @s = dreaming player (already in arena)

# Visual effects: Darkness + Night Vision = surreal washed-out palette
effect give @s darkness 999999 0 true
effect give @s night_vision 999999 0 true

# Fall protection on entry (3 seconds Resistance V)
effect give @s resistance 3 4 true

# Blindness transition (2 seconds — covers the construction/teleport)
effect give @s blindness 2 0 true

# Start timer: 5 minutes = 6000 ticks
scoreboard players set @s ec.dream_timer 6000

# Show bossbar
bossbar set evercraft:dream_timer players @s
bossbar set evercraft:dream_timer value 6000
bossbar set evercraft:dream_timer color purple
bossbar set evercraft:dream_timer visible true

# Set cooldown: current gametime + 5,184,000 ticks (72 real-time hours)
execute store result score @s ec.dream_cd run time query gametime
scoreboard players add @s ec.dream_cd 5184000
