# ============================================================
# On Enter Specialized Village
# Shows welcome message with specialization info
# Run as the player when entering a new village
# ============================================================

# Load specialization (sets #vs_current_spec vs.temp)
function evercraft:village/specialization/get_spec

# No specialization → no message
execute unless score #vs_current_spec vs.temp matches 1.. run return fail

# Check exile status first — if exiled, show exile warning instead
execute if score @s vs.exile matches 1 run function evercraft:village/exile/on_enter_exiled
execute if score @s vs.exile matches 1 run return fail

# Mining Village
execute if score #vs_current_spec vs.temp matches 1 run title @s actionbar [{text:"◆ ",color:"gold"},{text:"Mining Village",color:"yellow"},{text:" — Haste I while nearby",color:"gray"}]

# Fishing Village
execute if score #vs_current_spec vs.temp matches 2 run title @s actionbar [{text:"◆ ",color:"gold"},{text:"Fishing Village",color:"aqua"},{text:" — Luck I while nearby",color:"gray"}]

# Farming Village
execute if score #vs_current_spec vs.temp matches 3 run title @s actionbar [{text:"◆ ",color:"gold"},{text:"Farming Village",color:"green"},{text:" — Regeneration I while nearby",color:"gray"}]

# Combat Village
execute if score #vs_current_spec vs.temp matches 4 run title @s actionbar [{text:"◆ ",color:"gold"},{text:"Combat Village",color:"red"},{text:" — Strength I while nearby",color:"gray"}]

# Exploration Village
execute if score #vs_current_spec vs.temp matches 5 run title @s actionbar [{text:"◆ ",color:"gold"},{text:"Exploration Village",color:"dark_aqua"},{text:" — Speed I while nearby",color:"gray"}]

# Scholarly Village
execute if score #vs_current_spec vs.temp matches 6 run title @s actionbar [{text:"◆ ",color:"gold"},{text:"Scholarly Village",color:"light_purple"},{text:" — Night Vision while nearby",color:"gray"}]

playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.5 1.2
