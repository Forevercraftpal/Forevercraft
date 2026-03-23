# Artifact Kill Tracker — increment kill count for held artifact
# Run as player who got the kill
# Uses storage: evercraft:artifact_kills

# Check if mainhand has an artifact custom_data
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:true}] run return 0

# Read artifact signature from mainhand
execute store result score #ak_sig ec.temp run data get entity @s SelectedItem.components."minecraft:custom_data".signature

# Increment kill count for this artifact in storage
# Use player name + signature as key
execute store result storage evercraft:artifact_kills temp.sig int 1 run scoreboard players get #ak_sig ec.temp
function evercraft:artifacts/kill_track_increment with storage evercraft:artifact_kills temp
