# Duel — Crash Recovery
# Called on rejoin if player was in a duel (ec.duel_active >= 1)
# Runs as the reconnecting player

# Remove duel state from this player
tag @s remove ec.duel_active_tag
scoreboard players set @s ec.duel_active 0
scoreboard players set @s ec.duel_mode 0
scoreboard players set @s ec.duel_warn 0
scoreboard players set @s ec.duel_inv 0
scoreboard players set @s ec.duel_inv_cd 0

# If this player was a spectator, restore gamemode
execute if entity @s[tag=ec.duel_spectator] run gamemode survival @s
tag @s remove ec.duel_spectator

# Check if no more duelists remain — if so, full cleanup
execute store result score #duelist_count ec.temp if entity @a[tag=ec.duel_active_tag]
execute if score #duelist_count ec.temp matches 0 if score #duel_active ec.var matches 1 run function evercraft:duel/end/cleanup

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Duel state cleared after reconnect.",color:"gray"}]
