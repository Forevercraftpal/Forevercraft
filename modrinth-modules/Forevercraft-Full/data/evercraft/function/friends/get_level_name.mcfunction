# Friend System — Get friendship level name from heart count
# Input: #fr_hearts ec.temp = heart count
# Output: storage evercraft:friends temp.level_name, temp.level_color
# Also sets #fr_level ec.temp (0=Friend, 1=Good, 2=Great, 3=Ultra, 4=Best)

scoreboard players set #fr_level ec.temp 0
data modify storage evercraft:friends temp.level_name set value "Friend"
data modify storage evercraft:friends temp.level_color set value "gray"

execute if score #fr_hearts ec.temp matches 7.. run scoreboard players set #fr_level ec.temp 1
execute if score #fr_hearts ec.temp matches 7.. run data modify storage evercraft:friends temp.level_name set value "Good Friend"
execute if score #fr_hearts ec.temp matches 7.. run data modify storage evercraft:friends temp.level_color set value "green"

execute if score #fr_hearts ec.temp matches 30.. run scoreboard players set #fr_level ec.temp 2
execute if score #fr_hearts ec.temp matches 30.. run data modify storage evercraft:friends temp.level_name set value "Great Friend"
execute if score #fr_hearts ec.temp matches 30.. run data modify storage evercraft:friends temp.level_color set value "aqua"

execute if score #fr_hearts ec.temp matches 60.. run scoreboard players set #fr_level ec.temp 3
execute if score #fr_hearts ec.temp matches 60.. run data modify storage evercraft:friends temp.level_name set value "Ultra Friend"
execute if score #fr_hearts ec.temp matches 60.. run data modify storage evercraft:friends temp.level_color set value "light_purple"

execute if score #fr_hearts ec.temp matches 90.. run scoreboard players set #fr_level ec.temp 4
execute if score #fr_hearts ec.temp matches 90.. run data modify storage evercraft:friends temp.level_name set value "Best Friend"
execute if score #fr_hearts ec.temp matches 90.. run data modify storage evercraft:friends temp.level_color set value "gold"
