# Foraging Bush: Timer management (movement via shared ec.moving)
# Run as each player, at player position

# --- Sync movement from shared detection (OPT: was 2 NBT reads, now 0) ---
scoreboard players operation @s ec.fg_moving = @s ec.moving

# --- Decrement timer by 20 ticks (1 second) ---
scoreboard players remove @s ec.fg_timer 20

# --- When timer expires, attempt spawn ---
execute if score @s ec.fg_timer matches ..-1 run function evercraft:forage/try_spawn
