# Friend System — Remove a friend
# @s = player, ec.fr_remove trigger value = target's UUID3

# Get target uuid3 from trigger
scoreboard players operation #fr_remove_target ec.temp = @s ec.fr_remove

# Get self uuid3
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]

# Store for macros
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
execute store result storage evercraft:friends temp.target_uuid3 int 1 run scoreboard players get #fr_remove_target ec.temp

# Remove target from self's friend list and self from target's friend list
function evercraft:friends/remove_both with storage evercraft:friends temp

# Update self count
scoreboard players remove @s ec.fr_count 1
execute if score @s ec.fr_count matches ..-1 run scoreboard players set @s ec.fr_count 0

# Check if this was spouse — clear marriage if so
execute if score @s ec.fr_married matches 1 run function evercraft:friends/marriage/check_divorce_on_remove

# Update target's count if online
execute as @a store result score @s ec.temp_uuid3 run data get entity @s UUID[3]
execute as @a if score @s ec.temp_uuid3 = #fr_remove_target ec.temp run scoreboard players remove @s ec.fr_count 1

# Notify
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Friend removed.",color:"gray"}]

# If player is in codex detail view, clean up and return to list
execute if entity @s[tag=ec.fr_detail_view] run tag @s remove ec.fr_detail_view
execute if entity @s[tag=Adv.InMenu] run scoreboard players set @s ec.fr_target 0
execute if entity @s[tag=Adv.InMenu] at @s run scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute if entity @s[tag=Adv.InMenu] at @s as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.fr_gui_detail,distance=..5]
execute if entity @s[tag=Adv.InMenu] run function evercraft:codex/friends/refresh

# Reset trigger
scoreboard players set @s ec.fr_remove 0
scoreboard players enable @s ec.fr_remove
