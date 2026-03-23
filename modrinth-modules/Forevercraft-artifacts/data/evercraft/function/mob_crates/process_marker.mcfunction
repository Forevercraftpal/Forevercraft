# Mob Crates - Process Marker Item
# Called at the location of a dropped crate marker item
# Spawns a barrel with appropriate loot based on the marker tier

# Get the tier from the item's custom data
execute if data entity @s {Item:{components:{"minecraft:custom_data":{mob_crate_tier:"common"}}}} run function evercraft:mob_crates/spawn/common
execute if data entity @s {Item:{components:{"minecraft:custom_data":{mob_crate_tier:"uncommon"}}}} run function evercraft:mob_crates/spawn/uncommon
execute if data entity @s {Item:{components:{"minecraft:custom_data":{mob_crate_tier:"rare"}}}} run function evercraft:mob_crates/spawn/rare
execute if data entity @s {Item:{components:{"minecraft:custom_data":{mob_crate_tier:"ornate"}}}} run function evercraft:mob_crates/spawn/ornate
execute if data entity @s {Item:{components:{"minecraft:custom_data":{mob_crate_tier:"exquisite"}}}} run function evercraft:mob_crates/spawn/exquisite
execute if data entity @s {Item:{components:{"minecraft:custom_data":{mob_crate_tier:"mythical"}}}} run function evercraft:mob_crates/spawn/mythical

# Kill the marker item
kill @s
