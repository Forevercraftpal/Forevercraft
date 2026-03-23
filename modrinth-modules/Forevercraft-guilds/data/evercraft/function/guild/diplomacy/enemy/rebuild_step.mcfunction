# Guild Diplomacy — Rebuild enemies list, skipping target
# Recursive: pops first entry, re-adds if not matching target_id
# Run as: guild marker entity

execute unless data storage evercraft:guild temp.enemy_list[0] run return 0

# Copy first entry
data modify storage evercraft:guild temp.current set from storage evercraft:guild temp.enemy_list[0]

# Check if this entry matches the target
execute store result score #gd_enemy_id ec.temp run data get storage evercraft:guild temp.current.id
execute store result score #gd_remove_id ec.temp run data get storage evercraft:guild temp.target_id
execute unless score #gd_enemy_id ec.temp = #gd_remove_id ec.temp run data modify entity @s data.enemies append from storage evercraft:guild temp.current

# Remove first and recurse
data remove storage evercraft:guild temp.enemy_list[0]
function evercraft:guild/diplomacy/enemy/rebuild_step
