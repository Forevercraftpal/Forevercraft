# Friend Gift — Check if streak hit a milestone and grant bonus hearts
# #fr_ds_streak ec.temp = new streak value (after increment)
# @s = player whose streak incremented
# temp.ds_entry = current friend entry being processed (hearts modified directly)
# Hearts are added directly to temp.ds_entry.hearts since we're inside the streak loop

# Determine bonus hearts for this streak value
scoreboard players set #fr_ms_bonus ec.temp 0
execute if score #fr_ds_streak ec.temp matches 3 run scoreboard players set #fr_ms_bonus ec.temp 1
execute if score #fr_ds_streak ec.temp matches 7 run scoreboard players set #fr_ms_bonus ec.temp 2
execute if score #fr_ds_streak ec.temp matches 14 run scoreboard players set #fr_ms_bonus ec.temp 3
execute if score #fr_ds_streak ec.temp matches 30 run scoreboard players set #fr_ms_bonus ec.temp 5

# Early exit if not a milestone
execute if score #fr_ms_bonus ec.temp matches 0 run return 0

# Add bonus hearts directly to the entry
execute store result score #fr_ms_hearts ec.temp run data get storage evercraft:friends temp.ds_entry.hearts
scoreboard players operation #fr_ms_hearts ec.temp += #fr_ms_bonus ec.temp
execute store result storage evercraft:friends temp.ds_entry.hearts int 1 run scoreboard players get #fr_ms_hearts ec.temp

# Milestone notifications
execute if score #fr_ds_streak ec.temp matches 3 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"3-day gift streak! ",color:"#FFD700",bold:true},{text:"(+1 bonus heart)",color:"light_purple"}]

execute if score #fr_ds_streak ec.temp matches 7 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"7-day gift streak! ",color:"#FFD700",bold:true},{text:"(+2 bonus hearts, better gift odds!)",color:"light_purple"}]

execute if score #fr_ds_streak ec.temp matches 14 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"14-day gift streak! ",color:"#FFD700",bold:true},{text:"(+3 bonus hearts, great gift odds!)",color:"light_purple"}]

execute if score #fr_ds_streak ec.temp matches 30 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"30-day gift streak! ",color:"#FFD700",bold:true},{text:"(+5 bonus hearts, best gift odds!)",color:"#FF69B4"}]

# Sound for milestone
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.2
