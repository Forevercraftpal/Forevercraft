# Journal — Memory Info Click Handler
# Run as: the interaction entity that was clicked
# Determines which memory was clicked, routes to player, shows description

data remove entity @s interaction

# Determine which memory
scoreboard players set #mem_click ec.temp -1
execute if entity @s[tag=Adv.JnScMI0] run scoreboard players set #mem_click ec.temp 0
execute if entity @s[tag=Adv.JnScMI1] run scoreboard players set #mem_click ec.temp 1
execute if entity @s[tag=Adv.JnScMI2] run scoreboard players set #mem_click ec.temp 2
execute if entity @s[tag=Adv.JnScMI3] run scoreboard players set #mem_click ec.temp 3
execute if entity @s[tag=Adv.JnScMI4] run scoreboard players set #mem_click ec.temp 4
execute if entity @s[tag=Adv.JnScMI5] run scoreboard players set #mem_click ec.temp 5
execute if entity @s[tag=Adv.JnScMI6] run scoreboard players set #mem_click ec.temp 6
execute if entity @s[tag=Adv.JnScMI7] run scoreboard players set #mem_click ec.temp 7
execute if entity @s[tag=Adv.JnScMI8] run scoreboard players set #mem_click ec.temp 8
execute if entity @s[tag=Adv.JnScMI9] run scoreboard players set #mem_click ec.temp 9
execute if entity @s[tag=Adv.JnScMI10] run scoreboard players set #mem_click ec.temp 10
execute if entity @s[tag=Adv.JnScMI11] run scoreboard players set #mem_click ec.temp 11
execute if entity @s[tag=Adv.JnScMI12] run scoreboard players set #mem_click ec.temp 12
execute if entity @s[tag=Adv.JnScMI13] run scoreboard players set #mem_click ec.temp 13
execute if entity @s[tag=Adv.JnScMI14] run scoreboard players set #mem_click ec.temp 14
execute if entity @s[tag=Adv.JnScMI15] run scoreboard players set #mem_click ec.temp 15
execute if entity @s[tag=Adv.JnScMI16] run scoreboard players set #mem_click ec.temp 16
execute if entity @s[tag=Adv.JnScMI17] run scoreboard players set #mem_click ec.temp 17
execute if entity @s[tag=Adv.JnScMI18] run scoreboard players set #mem_click ec.temp 18
execute if entity @s[tag=Adv.JnScMI19] run scoreboard players set #mem_click ec.temp 19
execute if entity @s[tag=Adv.JnScMI20] run scoreboard players set #mem_click ec.temp 20
execute if entity @s[tag=Adv.JnScMI21] run scoreboard players set #mem_click ec.temp 21
execute if entity @s[tag=Adv.JnScMI22] run scoreboard players set #mem_click ec.temp 22
execute if entity @s[tag=Adv.JnScMI23] run scoreboard players set #mem_click ec.temp 23
execute if entity @s[tag=Adv.JnScMI24] run scoreboard players set #mem_click ec.temp 24

# Route to player and show description
scoreboard players operation #gui_click_sess ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu,distance=..5] if score @s adv.gui_session = #gui_click_sess ec.temp run function evercraft:codex/hub/journal/show_memory_info
