# Spirit Raids — Enter Raid Room
# Called when vote passes. Saves positions, cleans up dungeon, teleports to raid room.

# Announce entry
tellraw @a[tag=dg.player] [{text:"[Raid] ",color:"dark_red","bold":true},{text:"The raid begins...","color":"red"}]
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.warden.emerge master @s ~ ~ ~ 0.8 0.5
execute as @a[tag=dg.player] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.5 0.3

# Save each player's original position (for win teleport back)
execute as @a[tag=dg.player] at @s run function evercraft:raids/save_position

# Tag all dungeon players as raid players
tag @a[tag=dg.player] add rd.player
tag @a[tag=dg.player] add ec.rd_participant

# Clean up the dungeon (but keep dg.player tag — we need it for the transition)
kill @e[tag=dg.mob]
kill @e[type=marker,tag=dg.center]

# Set raid state
scoreboard players set #rd_active ec.var 1
scoreboard players set #rd_floor ec.var 0
scoreboard players set #rd_wave ec.var 0
scoreboard players set #rd_boss_alive ec.var 0
scoreboard players set #rd_boss_phase ec.var 0

# Map structure ID to boss ID
scoreboard players operation #rd_boss_id ec.var = #rd_struct ec.var

# Build raid room and teleport players
function evercraft:raids/room/build

# Reset dungeon state (cleanup without the tags/teleport — we handle those)
scoreboard players set #dg_active ec.var 0
scoreboard players set #dg_wave ec.var 0
scoreboard players set #dg_timer ec.var 0
scoreboard players set #dg_floor ec.var 0
tag @a remove dg.player
tag @a remove dg.awaiting_descent

# Start first raid floor
function evercraft:raids/floor/advance
