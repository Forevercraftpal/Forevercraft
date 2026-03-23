# Timber (5% Any Axe) — Start felling from this log position
# Full recursive tree search — finds all connected logs in any direction (max 32)

# Safety: only timber natural trees (player-placed logs won't have nearby leaves)
scoreboard players set #timber_leaves ec.var 0
execute if block ~ ~1 ~ #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if block ~ ~2 ~ #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if block ~ ~3 ~ #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if block ~ ~4 ~ #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if block ~ ~5 ~ #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if block ~ ~6 ~ #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if block ~1 ~3 ~ #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if block ~-1 ~3 ~ #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if block ~ ~3 ~1 #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if block ~ ~3 ~-1 #minecraft:leaves run scoreboard players set #timber_leaves ec.var 1
execute if score #timber_leaves ec.var matches 0 run return 0

# Reset counter
scoreboard players set #timber_count ec.var 0

# Align to block grid center and begin recursive search
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["ec_stmb_log","ec_stmb_start"]}
execute at @e[type=marker,tag=ec_stmb_start,limit=1] run function evercraft:world/timber/search

# Destroy all marked logs
execute at @e[type=marker,tag=ec_stmb_log] run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute at @e[type=marker,tag=ec_stmb_log] run setblock ~ ~ ~ air

# Clean up markers
kill @e[type=marker,tag=ec_stmb_log]

# Sound and particle effects
playsound minecraft:block.wood.break master @s ~ ~ ~ 1 0.8
particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.5 0.5 0.1 3

# Notify player
tellraw @s [{text:"Timber!",color:"gold",bold:true}]
