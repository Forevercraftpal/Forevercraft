# === ORE NODE SYSTEM ===
# Initialize scoreboards, boss bar, and start scheduled loops

# --- Core spawning scoreboards ---
scoreboard objectives add ec.pr_timer dummy "Prospect Spawn Timer"
scoreboard objectives add ec.pr_lastx dummy "Prospect Last X"
scoreboard objectives add ec.pr_lastz dummy "Prospect Last Z"
scoreboard objectives add ec.pr_moving dummy "Prospect Moving Flag"

# --- Mining mechanic scoreboards ---
scoreboard objectives add ec.pr_picking dummy "Prospect Mining Active"
scoreboard objectives add ec.pr_progress dummy "Prospect Mining Progress"
scoreboard objectives add ec.pr_sx dummy "Prospect Node X"
scoreboard objectives add ec.pr_sy dummy "Prospect Node Y"
scoreboard objectives add ec.pr_sz dummy "Prospect Node Z"

# --- Start scheduled loops ---
schedule function evercraft:prospect/tick_spawn 1s
schedule function evercraft:prospect/tick_particles 10t
schedule function evercraft:prospect/tick_despawn 100t
