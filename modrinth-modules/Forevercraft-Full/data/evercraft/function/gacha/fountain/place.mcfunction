# Place the Fountain of Eternal Dreams
# Triggered by advancement (place player_head with fountain_of_dreams custom_data)
# Runs as @s = player

# Revoke advancement immediately for re-detection
advancement revoke @s only evercraft:gacha/place_fountain

# Raycast from eyes to find the placed player_head block
tag @s add ec.fountain_searching
scoreboard players set @s ec.temp 0
execute at @s anchored eyes run function evercraft:gacha/fountain/raycast_place

# Fallback: scan nearby if raycast missed (oblique angles)
execute if entity @s[tag=ec.fountain_searching] at @s align xyz run function evercraft:gacha/fountain/scan_place

# Clean up search tag
tag @s remove ec.fountain_searching
