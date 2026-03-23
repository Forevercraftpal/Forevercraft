# Spirit Tools — Load scoreboards and start cooldown tick
# Called from craftforever/load.mcfunction

# Tool detection
scoreboard objectives add ec.st_tool dummy "ST Tool Type"

# Mastery cooldown (ticks remaining)
scoreboard objectives add ec.st_cd dummy "ST Cooldown"

# Sneak detection for mastery activation
scoreboard objectives add ec.st_is_snk dummy "ST Sneak Now"
scoreboard objectives add ec.st_was_snk dummy "ST Sneak Prev"
# FIX #3: Sneak debounce timer (must hold sneak 5 ticks before mastery fires)
scoreboard objectives add ec.st_snk_timer dummy "ST Sneak Timer"

# Stat delta tracking
scoreboard objectives add ec.st_mine_prev dummy "ST Mine Prev"
scoreboard objectives add ec.st_log_prev dummy "ST Log Prev"
scoreboard objectives add ec.st_wool_prev dummy "ST Wool Prev"
scoreboard objectives add ec.st_fish_prev dummy "ST Fish Prev"

# Bloomweaver growth aura counter
scoreboard objectives add ec.st_grow_cd dummy "ST Grow CD"

# Item magnet pulse counter
scoreboard objectives add ec.st_magnet_cd dummy "ST Magnet CD"

# Active mastery timer (for timed effects like Maelstrom)
scoreboard objectives add ec.st_mastery_t dummy "ST Mastery Timer"

# Effect refresh counter (shared global)
execute unless score #st_effect_cd ec.var matches 0.. run scoreboard players set #st_effect_cd ec.var 0

# Unlimited vein size for spirit pickaxe
scoreboard players set #st_max_vein ec.var 512

# Unlimited tree size for spirit axe
scoreboard players set #st_max_tree ec.var 512

# Colored wool tracking for Silkgrasp (all 16 colors summed for delta detection)
scoreboard objectives add ec.st_s_owool minecraft.picked_up:minecraft.orange_wool "ST Orange Wool"
scoreboard objectives add ec.st_s_mwool minecraft.picked_up:minecraft.magenta_wool "ST Magenta Wool"
scoreboard objectives add ec.st_s_lbwool minecraft.picked_up:minecraft.light_blue_wool "ST Lt Blue Wool"
scoreboard objectives add ec.st_s_ywool minecraft.picked_up:minecraft.yellow_wool "ST Yellow Wool"
scoreboard objectives add ec.st_s_lwool minecraft.picked_up:minecraft.lime_wool "ST Lime Wool"
scoreboard objectives add ec.st_s_pwool minecraft.picked_up:minecraft.pink_wool "ST Pink Wool"
scoreboard objectives add ec.st_s_gwool minecraft.picked_up:minecraft.gray_wool "ST Gray Wool"
scoreboard objectives add ec.st_s_lgwool minecraft.picked_up:minecraft.light_gray_wool "ST Lt Gray Wool"
scoreboard objectives add ec.st_s_cwool minecraft.picked_up:minecraft.cyan_wool "ST Cyan Wool"
scoreboard objectives add ec.st_s_prwool minecraft.picked_up:minecraft.purple_wool "ST Purple Wool"
scoreboard objectives add ec.st_s_blwool minecraft.picked_up:minecraft.blue_wool "ST Blue Wool"
scoreboard objectives add ec.st_s_brwool minecraft.picked_up:minecraft.brown_wool "ST Brown Wool"
scoreboard objectives add ec.st_s_grwool minecraft.picked_up:minecraft.green_wool "ST Green Wool"
scoreboard objectives add ec.st_s_rwool minecraft.picked_up:minecraft.red_wool "ST Red Wool"
scoreboard objectives add ec.st_s_bkwool minecraft.picked_up:minecraft.black_wool "ST Black Wool"

# Start cooldown tick
schedule function evercraft:craftforever/spirit_tools/cooldown_tick 1s

# === Artisan Tome quest system ===
function evercraft:craftforever/spirit_tools/tome/load

# === Tool Tier Progression system ===
function evercraft:craftforever/spirit_tools/progression/load

# === Grand Forge system ===
function evercraft:craftforever/grand_forge/load

# === Crafting Class Affinity system ===
function evercraft:craft_affinity/load
