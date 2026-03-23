# Black Market Heist — Crash Recovery
# Called on rejoin if player had ec.heist_active >= 1

# === TP TO BED FIRST (player may be stranded at arena Y=300) ===
execute if data entity @s respawn run function evercraft:heist/active/tp_to_spawn
execute unless data entity @s respawn at @s run spreadplayers ~ ~ 0 1 false @s

# === PREVENT TOMB DEATH ===
scoreboard players set @s ec.tomb_death 0

# Clear this player's state
tag @s remove ec.heist_active_tag
scoreboard players set @s ec.heist_active 0
scoreboard players set @s ec.heist_timer 0
effect clear @s minecraft:slow_falling
effect clear @s minecraft:resistance
effect clear @s minecraft:blindness
effect clear @s minecraft:absorption

# Check if no more heist players remain — full cleanup
execute store result score #heist_count ec.temp if entity @a[tag=ec.heist_active_tag]
execute if score #heist_count ec.temp matches 0 if score #heist_active ec.var matches 1 run function evercraft:heist/cleanup

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Heist state cleared after reconnect.",color:"gray"}]
