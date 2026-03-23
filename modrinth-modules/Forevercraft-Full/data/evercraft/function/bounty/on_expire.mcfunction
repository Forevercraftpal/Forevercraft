# Bounty — Timer expired, bounty failed
# Run as player

# Kill only this player's bounty target (per-player owner tracking)
scoreboard players operation #bnt_check ec.var = @s ec.bnt_owner
execute as @e[tag=ec.bounty_target] if score @s ec.bnt_owner = #bnt_check ec.var run kill @s

# Clear bounty state
scoreboard players set @s ec.bnt_tier 0
scoreboard players set @s ec.bnt_biome -1
scoreboard players set @s ec.bnt_timer 0
scoreboard players set @s ec.bnt_spawned 0
scoreboard players set @s ec.bnt_owner 0

# Notify
tellraw @s [{text:"  ",color:"dark_red"},{text:"Your bounty has expired. The target escaped.",color:"red"}]
playsound minecraft:entity.villager.no player @s ~ ~ ~ 0.7 0.8
