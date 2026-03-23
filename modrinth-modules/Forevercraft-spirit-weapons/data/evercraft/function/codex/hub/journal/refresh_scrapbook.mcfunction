# Journal — Refresh Scrapbook Overview
# Updates pet name, memory count, and bonus display
# Run as: player

# Check if player has an active pet
execute unless entity @s[tag=companion.activepet] run return run function evercraft:codex/hub/journal/refresh_scrapbook_nopet

# Get memory count
function evercraft:companions/memories/get_count

# Store count to storage for macro
execute store result storage evercraft:journal_gui sc_mem_count int 1.0 run scoreboard players get #mem_count companion.calc

# Determine bonus tier text
data modify storage evercraft:journal_gui sc_bonus set value "+0%"
execute if score #mem_count companion.calc matches 5..9 run data modify storage evercraft:journal_gui sc_bonus set value "+5%"
execute if score #mem_count companion.calc matches 10..14 run data modify storage evercraft:journal_gui sc_bonus set value "+10%"
execute if score #mem_count companion.calc matches 15..19 run data modify storage evercraft:journal_gui sc_bonus set value "+15%"
execute if score #mem_count companion.calc matches 20..24 run data modify storage evercraft:journal_gui sc_bonus set value "+20%"
execute if score #mem_count companion.calc matches 25.. run data modify storage evercraft:journal_gui sc_bonus set value "+30%"

# Update memory count + bonus via macro
function evercraft:codex/hub/journal/refresh_scrapbook_inner with storage evercraft:journal_gui

# Copy pet name directly to the display entity (JSON text, can't macro)
scoreboard players operation #Search companion.id = @s companion.id
data modify entity @e[type=text_display,tag=Adv.JnScPetName,distance=..5,limit=1] text set from entity @e[type=item_display, tag=Companion, predicate=evercraft:companions/check_id, limit=1] custom_name
