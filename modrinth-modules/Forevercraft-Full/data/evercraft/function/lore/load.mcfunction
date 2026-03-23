# === LORE DISCOVERY SYSTEM ===
# Initialize scoreboards, boss bar, and start scheduled loops

# --- Core spawning scoreboards ---
scoreboard objectives add ec.lore_timer dummy "Lore Spawn Timer"
scoreboard objectives add ec.lore_lastx dummy "Lore Last X"
scoreboard objectives add ec.lore_lastz dummy "Lore Last Z"
scoreboard objectives add ec.lore_moving dummy "Lore Moving Flag"

# --- Pickup mechanic scoreboards ---
scoreboard objectives add ec.lore_picking dummy "Lore Pickup Active"
scoreboard objectives add ec.lore_progress dummy "Lore Pickup Progress"
scoreboard objectives add ec.lore_sx dummy "Lore Sparkle X"
scoreboard objectives add ec.lore_sy dummy "Lore Sparkle Y"
scoreboard objectives add ec.lore_sz dummy "Lore Sparkle Z"

# --- Collection system scoreboards ---
scoreboard objectives add ec.lore_add trigger "Add Lore"
scoreboard objectives add ec.lore_dim dummy "Lore Dimension"
scoreboard objectives add ec.lore_cat dummy "Lore Category"
scoreboard objectives add ec.lore_set_id dummy "Lore Set ID"
scoreboard objectives add ec.lore_piece_id dummy "Lore Piece ID"
scoreboard objectives add ec.lore_struct_id dummy "Lore Structure ID"
scoreboard objectives add ec.lore_rarity dummy "Lore Rarity"
scoreboard objectives add ec.lore_set dummy "Lore Decoded Set"
scoreboard objectives add ec.lore_piece dummy "Lore Decoded Piece"
scoreboard objectives add ec.lore_sets_done dummy "Lore Sets Complete"
scoreboard objectives add ec.lore_dim0_done dummy "Lore Overworld Done"
scoreboard objectives add ec.lore_dim1_done dummy "Lore Nether Done"
scoreboard objectives add ec.lore_dim2_done dummy "Lore End Done"
scoreboard objectives add ec.lore_dim3_done dummy "Lore Pages Done"
scoreboard objectives add ec.lore_cached dummy "Lore Cached UID"
scoreboard objectives add ec.lore_map trigger "Lore Map"

# --- GUI scoreboards ---
scoreboard objectives add adv.gui_lore_dim dummy "Lore GUI Dim"
scoreboard objectives add adv.gui_lore_subcat dummy "Lore GUI Subcat"
scoreboard objectives add adv.gui_lore_set dummy "Lore GUI Set"
scoreboard objectives add adv.gui_lore_pg dummy "Lore GUI List Page"

# --- Lore Exchange scoreboards ---
scoreboard objectives add lx.count dummy "Lore Exchange Count"
scoreboard objectives add lx.tier dummy "Lore Exchange Tier"
scoreboard objectives add lx.required dummy "Lore Exchange Required"
scoreboard objectives add lx.reward dummy "Lore Exchange Reward"
scoreboard objectives add lx.temp dummy "Lore Exchange Temp"

# --- Constants (ensure they exist) ---
scoreboard players set #5 ec.const 5
scoreboard players set #16 ec.const 16

# Enable trigger for all players
scoreboard players enable @a ec.lore_add

# --- Boss bar for pickup progress ---
bossbar add evercraft:lore_pickup {"text":"Collecting...","color":"gold","italic":true}
bossbar set evercraft:lore_pickup max 60
bossbar set evercraft:lore_pickup color yellow
bossbar set evercraft:lore_pickup style notched_6
bossbar set evercraft:lore_pickup visible false

# --- Load set data, pools, and per-set scoreboards ---
function evercraft:lore/data/load_sets
function evercraft:lore/data/load_pools
function evercraft:lore/data/load_scoreboards

# --- Start scheduled loops ---
schedule function evercraft:lore/tick_spawn 1s
schedule function evercraft:lore/tick_particles 10t
schedule function evercraft:lore/tick_despawn 100t
