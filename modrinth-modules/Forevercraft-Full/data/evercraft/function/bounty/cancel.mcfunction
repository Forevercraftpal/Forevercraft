# Bounty — Cancel active bounty (player command)
# Run as player

execute unless score @s ec.bnt_tier matches 1.. run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You don't have an active bounty.",color:"gray"}]
execute unless score @s ec.bnt_tier matches 1.. run return 0

# Kill only this player's bounty target (per-player owner tracking)
scoreboard players operation #bnt_check ec.var = @s ec.bnt_owner
execute as @e[tag=ec.bounty_target] if score @s ec.bnt_owner = #bnt_check ec.var run kill @s

# Clear state
scoreboard players set @s ec.bnt_tier 0
scoreboard players set @s ec.bnt_biome -1
scoreboard players set @s ec.bnt_timer 0
scoreboard players set @s ec.bnt_spawned 0
scoreboard players set @s ec.bnt_owner 0

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Bounty cancelled.",color:"gray"}]
