# Bounty — Update distance display on actionbar
# Run as player with spawned bounty target

# Check target is in range for distance calculation (may be in unloaded chunk)
execute unless entity @e[tag=ec.bounty_target] run return 0

# Calculate distance (Manhattan approximation)
execute store result score #bnt_px ec.var run data get entity @s Pos[0]
execute store result score #bnt_pz ec.var run data get entity @s Pos[2]
execute as @e[tag=ec.bounty_target,limit=1,sort=nearest] store result score #bnt_tx ec.var run data get entity @s Pos[0]
execute as @e[tag=ec.bounty_target,limit=1,sort=nearest] store result score #bnt_tz ec.var run data get entity @s Pos[2]

scoreboard players operation #bnt_dx ec.var = #bnt_px ec.var
scoreboard players operation #bnt_dx ec.var -= #bnt_tx ec.var
scoreboard players operation #bnt_dz ec.var = #bnt_pz ec.var
scoreboard players operation #bnt_dz ec.var -= #bnt_tz ec.var

# Absolute values
execute if score #bnt_dx ec.var matches ..-1 run scoreboard players operation #bnt_dx ec.var *= #-1 ec.const
execute if score #bnt_dz ec.var matches ..-1 run scoreboard players operation #bnt_dz ec.var *= #-1 ec.const

# Rough distance = dx + dz (Manhattan)
scoreboard players operation @s ec.bnt_dist = #bnt_dx ec.var
scoreboard players operation @s ec.bnt_dist += #bnt_dz ec.var

# Display on actionbar with distance
execute store result storage evercraft:bounty dist int 1 run scoreboard players get @s ec.bnt_dist
function evercraft:bounty/display_distance with storage evercraft:bounty
