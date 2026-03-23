# Codex Friends — Do next page
# @s = player

# Calculate max page
scoreboard players set #fr_max_page ec.temp 1
execute if score @s ec.fr_count matches 6.. run scoreboard players set #fr_max_page ec.temp 2
execute if score @s ec.fr_count matches 11.. run scoreboard players set #fr_max_page ec.temp 3
execute if score @s ec.fr_count matches 16.. run scoreboard players set #fr_max_page ec.temp 4
execute if score @s ec.fr_count matches 21.. run scoreboard players set #fr_max_page ec.temp 5
execute if score @s ec.fr_count matches 26.. run scoreboard players set #fr_max_page ec.temp 6
execute if score @s ec.fr_count matches 31.. run scoreboard players set #fr_max_page ec.temp 7
execute if score @s ec.fr_count matches 36.. run scoreboard players set #fr_max_page ec.temp 8
execute if score @s ec.fr_count matches 41.. run scoreboard players set #fr_max_page ec.temp 9
execute if score @s ec.fr_count matches 46.. run scoreboard players set #fr_max_page ec.temp 10

execute if score @s ec.fr_page >= #fr_max_page ec.temp run return 0
scoreboard players add @s ec.fr_page 1
function evercraft:codex/friends/refresh
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
