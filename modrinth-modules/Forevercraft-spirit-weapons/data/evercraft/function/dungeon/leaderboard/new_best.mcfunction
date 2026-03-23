# Dungeon Leaderboard — New personal best!
# Run as the player who set a new record

# Update best time (ticks and seconds)
scoreboard players operation @s dg.best_time = @s dg.elapsed
scoreboard players operation @s dg.best_time_s = @s dg.elapsed_s

# Store which instance the best was set on
scoreboard players operation @s dg.best_inst = #dg_instance ec.var

# Celebration (private)
tellraw @s [{text:"  ⚡ ",color:"gold"},{text:"NEW PERSONAL BEST!",color:"gold",bold:true}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.5

# Broadcast to all players with instance type
# Copy instance name to best storage for macro
execute if score #dg_type ec.var matches 1 run data modify storage evercraft:dungeon best.instance set from storage evercraft:dungeon instance.name
execute if score #dg_type ec.var matches 2 run data merge storage evercraft:dungeon {best:{instance:"Village Defense"}}
execute store result storage evercraft:dungeon best.seconds int 1 run scoreboard players get @s dg.elapsed_s
function evercraft:dungeon/leaderboard/broadcast_best with storage evercraft:dungeon best
