# Spirit Raids — Restore Player Position (Win)
# Called as each player to teleport back to their saved position

# Store coordinates to storage for macro teleport
execute store result storage evercraft:raids tp.x int 1 run scoreboard players get @s ec.rd_ox
execute store result storage evercraft:raids tp.y int 1 run scoreboard players get @s ec.rd_oy
execute store result storage evercraft:raids tp.z int 1 run scoreboard players get @s ec.rd_oz

# Teleport to saved dimension first, then coordinates
execute if score @s ec.rd_dim matches 0 in minecraft:overworld run function evercraft:raids/do_teleport with storage evercraft:raids tp
execute if score @s ec.rd_dim matches 1 in minecraft:the_nether run function evercraft:raids/do_teleport with storage evercraft:raids tp
execute if score @s ec.rd_dim matches 2 in minecraft:the_end run function evercraft:raids/do_teleport with storage evercraft:raids tp
