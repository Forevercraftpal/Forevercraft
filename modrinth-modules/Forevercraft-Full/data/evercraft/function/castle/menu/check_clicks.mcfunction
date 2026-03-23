# Infinite Castle — Menu Click Detection
# Run as: player with IC.InMenu tag

# Inactivity timeout (30 seconds = 600 ticks)
scoreboard players add @s dg.menu_time 1
execute if score @s dg.menu_time matches 600.. run function evercraft:castle/menu/close
execute if score @s dg.menu_time matches 600.. run tag @s remove ic.starter
execute if entity @s[tag=!IC.InMenu] run return 0

# Check Start button
execute at @s as @e[type=interaction,tag=IC.StartBtn,distance=..5] if data entity @s interaction run function evercraft:castle/menu/select_start

# Check Continue button (if it exists)
execute at @s as @e[type=interaction,tag=IC.ContBtn,distance=..5] if data entity @s interaction run function evercraft:castle/menu/select_continue

# Check Cancel button — close without starting
execute at @s as @e[type=interaction,tag=IC.CancelBtn,distance=..5] if data entity @s interaction run function evercraft:castle/menu/close
tag @s remove ic.starter

# Clear interaction data from all buttons (prevent re-trigger)
execute at @s as @e[type=interaction,tag=IC.MenuEl,distance=..5] run data remove entity @s interaction
