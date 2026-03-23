# Firebrand — Detection Init
# Run as @s when spirit weapon ID 3 (Berserker axe) detected in mainhand

# Initialize Rampage state
scoreboard players set @s ec.sp_rampage 0
scoreboard players set @s ec.sp_rampage_dmg 0

# Death prevention internal cooldown (reuse ec.sp_charges: 0=ready, 1+=on cooldown ticks)
execute unless score @s ec.sp_charges matches 1.. run scoreboard players set @s ec.sp_charges 0
