# Sleep Check — runs every 5 ticks from tick.mcfunction
# Counts sleeping players via sleeping_pos NBT (expensive — batched to save 80% of reads)
# Adds 5 to sleep_wait per check instead of 1 per tick

# OPT-21: Reset poll counter here instead of in tick.mcfunction (saves 1 command/tick)
scoreboard players set #sleep_poll ec.var 0

execute store result score #dlt_total ec.var if entity @a[gamemode=!spectator]
scoreboard players set #dlt_sleeping ec.var 0
execute as @a[gamemode=!spectator] if data entity @s sleeping_pos run scoreboard players add #dlt_sleeping ec.var 1
execute if score #dlt_total ec.var matches 1.. if score #dlt_sleeping ec.var >= #dlt_total ec.var unless score #sleep_skip_cd ec.var matches 1.. run scoreboard players add #sleep_wait ec.var 5
execute unless score #dlt_sleeping ec.var >= #dlt_total ec.var run scoreboard players set #sleep_wait ec.var 0
