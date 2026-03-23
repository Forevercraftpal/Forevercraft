# Duel Spectate — Teleport (runs as the spectating player)

# Check duel is active and arena mode
execute unless score #duel_active ec.var matches 1 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No active duel to watch!",color:"red"}]
execute unless entity @a[tag=ec.duel_active_tag,scores={ec.duel_mode=2}] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This is an open world duel — no arena to spectate!",color:"red"}]

# Block if already a duelist
execute if entity @s[tag=ec.duel_active_tag] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are in the duel!",color:"red"}]

# Block if already spectating
execute if entity @s[tag=ec.duel_spectator] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are already spectating!",color:"red"}]

# Save spectator's return position
execute at @s run summon marker ~ ~ ~ {Tags:["duel.spec_return","duel.spec_new"]}
# Tag the marker with spectator's name for later retrieval
execute as @e[type=marker,tag=duel.spec_new] run data modify entity @s Tags append from entity @s Tags
tag @s add ec.duel_spectator

# Store player's UUID on the return marker for identification
execute store result score @e[type=marker,tag=duel.spec_new,limit=1] ec.temp run scoreboard players get @s ec.temp
tag @e[type=marker,tag=duel.spec_new] remove duel.spec_new

# Set gamemode spectator
gamemode spectator @s

# Teleport to arena stands area (offset from center)
execute at @e[type=marker,tag=duel.center,limit=1] run tp @s ~0 ~5 ~-13

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are now spectating the duel!",color:"aqua"}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 1.2
