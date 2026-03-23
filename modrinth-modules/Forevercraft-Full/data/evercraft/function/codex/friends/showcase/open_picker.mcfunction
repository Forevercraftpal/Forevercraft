# Showcase — Open achievement picker
# Scans unlocked achievements, picks 5 random, displays picker UI
# Run as player with ec.sc_in_picker tag

# Kill any existing picker elements
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.sc_picker_el,distance=..5]

# Load current pins for filtering
execute store result storage evercraft:showcase temp.self_uuid3 int 1 run data get entity @s UUID[3]
function evercraft:codex/friends/showcase/load_pins with storage evercraft:showcase temp

# Scan which achievements the player has unlocked
function evercraft:codex/friends/showcase/scan_unlocked

# Filter out already-pinned achievements
function evercraft:codex/friends/showcase/filter_pinned

# Count available
execute store result score #sc_count ec.temp run data get storage evercraft:showcase temp.unlocked

# If none available, show message and return
execute if score #sc_count ec.temp matches ..0 run return run function evercraft:codex/friends/showcase/show_no_achievements

# Pick up to 5 random
function evercraft:codex/friends/showcase/pick_random_5

# Spawn the picker UI
function evercraft:codex/friends/showcase/spawn_picker

# Stamp session on all new picker entities
execute as @e[tag=ec.sc_picker_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[tag=ec.sc_gui_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
