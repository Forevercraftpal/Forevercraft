# Gacha system tick — Fountain interaction detection + menu ticks
# Called from main tick.mcfunction (existence-gated)

# Fountain break detection (player_head removed → clean up entities, drop item)
execute as @e[type=marker,tag=ec.fountain] at @s unless block ~ ~ ~ minecraft:player_head unless block ~ ~ ~ minecraft:player_wall_head run function evercraft:gacha/fountain/on_break

# Fountain interaction detection (right-click on fountain interaction entities)
execute as @e[type=interaction,tag=ec.fountain_click] if data entity @s interaction at @s run function evercraft:gacha/fountain/interact

# Menu tick for players in fountain menu (skip during reel animation)
execute as @a[tag=ec.InFountain] unless score @s ec.reel_tick matches 0.. at @s run function evercraft:gacha/fountain/menu/check_clicks
execute as @a[tag=ec.InFountain] unless score @s ec.reel_tick matches 0.. at @s run function evercraft:gacha/fountain/menu/tick

# Reel animation tick (for players with active reel)
execute as @a[tag=ec.InFountain,scores={ec.reel_tick=0..}] at @s run function evercraft:gacha/reel/tick

# Skip button click detection (during reel)
execute as @e[type=interaction,tag=ec.ReelSkipClick] if data entity @s interaction at @s run function evercraft:gacha/reel/on_skip_click

# Info browser tick
execute as @a[tag=ec.InGachaInfo] at @s run function evercraft:gacha/fountain/info/tick

# Spark trigger
execute as @a[scores={ec.spark=1..}] run function evercraft:gacha/spark/claim

# Dreamdust Exchange trigger
execute as @a[scores={ec.ddex=1..}] run function evercraft:gacha/exchange/buy/process
