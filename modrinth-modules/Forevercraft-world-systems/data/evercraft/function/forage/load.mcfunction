# === FORAGING BUSH SYSTEM ===
# Initialize scoreboards, boss bar, and start scheduled loops

# --- Core spawning scoreboards ---
scoreboard objectives add ec.fg_timer dummy "Forage Spawn Timer"
scoreboard objectives add ec.fg_lastx dummy "Forage Last X"
scoreboard objectives add ec.fg_lastz dummy "Forage Last Z"
scoreboard objectives add ec.fg_moving dummy "Forage Moving Flag"

# --- Gathering mechanic scoreboards ---
scoreboard objectives add ec.fg_picking dummy "Forage Gathering Active"
scoreboard objectives add ec.fg_progress dummy "Forage Gathering Progress"
scoreboard objectives add ec.fg_sx dummy "Forage Bush X"
scoreboard objectives add ec.fg_sy dummy "Forage Bush Y"
scoreboard objectives add ec.fg_sz dummy "Forage Bush Z"

# --- Boss bar for gathering progress ---
bossbar add evercraft:forage_gather {"text":"Gathering...","color":"green","italic":true}
bossbar set evercraft:forage_gather max 60
bossbar set evercraft:forage_gather color green
bossbar set evercraft:forage_gather style notched_6
bossbar set evercraft:forage_gather visible false

# --- Start scheduled loops ---
schedule function evercraft:forage/tick_spawn 1s
schedule function evercraft:forage/tick_particles 10t
schedule function evercraft:forage/tick_despawn 100t
