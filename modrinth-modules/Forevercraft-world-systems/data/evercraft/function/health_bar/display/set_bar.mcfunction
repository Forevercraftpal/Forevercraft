# RPG Health Bar — Set Bar (Macro)
# Args: $(slot) = boss bar slot number
# Context: @s = player, positioned at mob hit point, storage has hp/max_hp

# Set the bar value
$execute store result bossbar evercraft:hb_$(slot) value run scoreboard players get @s hb.pct

# Set color based on health percentage
$execute if score @s hb.pct matches 51..100 run bossbar set evercraft:hb_$(slot) color green
$execute if score @s hb.pct matches 26..50 run bossbar set evercraft:hb_$(slot) color yellow
$execute if score @s hb.pct matches 0..25 run bossbar set evercraft:hb_$(slot) color red

# Override color for special mob types
$execute if entity @s[tag=hb.accent_patron] run bossbar set evercraft:hb_$(slot) color purple
$execute if entity @s[tag=hb.accent_furia] run bossbar set evercraft:hb_$(slot) color red
$execute if entity @s[tag=hb.accent_pet] run bossbar set evercraft:hb_$(slot) color blue

# Set name using selector — resolves at current position (near mob)
# The selector shows CustomName if set, otherwise entity type name (e.g. "Zombie")
# Store slot for the name macro
$data modify storage evercraft:health_bar slot set value "$(slot)"
function evercraft:health_bar/display/set_name with storage evercraft:health_bar

# Make visible
$bossbar set evercraft:hb_$(slot) visible true
