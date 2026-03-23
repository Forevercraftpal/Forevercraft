# Friend Title — Set family title for a friend
# @s = player, ec.fr_title trigger encodes: (title_id * 1000000) + target_uuid3
# Title IDs: 0=friend, 1=brother, 2=sister, 3=mother, 4=father, 5=grandma, 6=grandpa, 7=cousin, 8=uncle, 9=aunt, 10=spouse

# Decode trigger value
scoreboard players operation #fr_title_raw ec.temp = @s ec.fr_title
scoreboard players set #1000000 ec.temp 1000000
scoreboard players operation #fr_title_id ec.temp = #fr_title_raw ec.temp
scoreboard players operation #fr_title_id ec.temp /= #1000000 ec.temp
scoreboard players operation #fr_title_target_uuid3 ec.temp = #fr_title_raw ec.temp
scoreboard players operation #fr_title_target_uuid3 ec.temp %= #1000000 ec.temp

# Get self UUID3
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
execute store result storage evercraft:friends temp.title_target_uuid3 int 1 run scoreboard players get #fr_title_target_uuid3 ec.temp

# Map title ID to string
data modify storage evercraft:friends temp.new_title set value "friend"
execute if score #fr_title_id ec.temp matches 1 run data modify storage evercraft:friends temp.new_title set value "brother"
execute if score #fr_title_id ec.temp matches 2 run data modify storage evercraft:friends temp.new_title set value "sister"
execute if score #fr_title_id ec.temp matches 3 run data modify storage evercraft:friends temp.new_title set value "mother"
execute if score #fr_title_id ec.temp matches 4 run data modify storage evercraft:friends temp.new_title set value "father"
execute if score #fr_title_id ec.temp matches 5 run data modify storage evercraft:friends temp.new_title set value "grandmother"
execute if score #fr_title_id ec.temp matches 6 run data modify storage evercraft:friends temp.new_title set value "grandfather"
execute if score #fr_title_id ec.temp matches 7 run data modify storage evercraft:friends temp.new_title set value "cousin"
execute if score #fr_title_id ec.temp matches 8 run data modify storage evercraft:friends temp.new_title set value "uncle"
execute if score #fr_title_id ec.temp matches 9 run data modify storage evercraft:friends temp.new_title set value "aunt"
execute if score #fr_title_id ec.temp matches 10 run data modify storage evercraft:friends temp.new_title set value "spouse"

# Update storage (on YOUR friend list — what title you gave them)
function evercraft:friends/title/do_set with storage evercraft:friends temp

# Notify self immediately
function evercraft:friends/title/notify with storage evercraft:friends temp

# Update title unlock on TARGET's storage (cosmetic title they receive)
# Store sender's companion.id for notification later
execute store result storage evercraft:friends temp.setter_cid int 1 run scoreboard players get @s companion.id
execute store result storage evercraft:friends temp.set_gametime int 1 run time query gametime
function evercraft:friends/title/update_unlock with storage evercraft:friends temp

# Reset trigger
scoreboard players set @s ec.fr_title 0
scoreboard players enable @s ec.fr_title
