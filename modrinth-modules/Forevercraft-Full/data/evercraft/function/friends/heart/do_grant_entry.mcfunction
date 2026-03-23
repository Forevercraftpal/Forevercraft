# Friend Heart — Update matched friend entry: increment hearts + set daily flag
# Entry is at temp.grant_list[0]

# Copy entry to temp for modification
data modify storage evercraft:friends temp.grant_entry_updated set from storage evercraft:friends temp.grant_list[0]

# Increment hearts (read, add 1, write back)
execute store result score #fr_grant_hearts ec.temp run data get storage evercraft:friends temp.grant_entry_updated.hearts
scoreboard players add #fr_grant_hearts ec.temp 1
execute store result storage evercraft:friends temp.grant_entry_updated.hearts int 1 run scoreboard players get #fr_grant_hearts ec.temp

# Set daily flag
data modify storage evercraft:friends temp.grant_entry_updated.daily_heart set value 1b

# Store new hearts count for level check
execute store result storage evercraft:friends temp.granted_hearts int 1 run scoreboard players get #fr_grant_hearts ec.temp

# Mark as done
scoreboard players set #fr_grant_done ec.temp 1

# Realm milestone: friendship level-up
function evercraft:milestones/increment/friend_levelup
