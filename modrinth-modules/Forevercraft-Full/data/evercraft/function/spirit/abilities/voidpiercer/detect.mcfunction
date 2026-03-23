# Voidpiercer — Detection Init (Hunter Crossbow)
# Run as @s when spirit weapon ID 2 is detected in mainhand

# Initialize rift state
scoreboard players set @s ec.sp_state 0
scoreboard players set @s ec.sp_timer 0

# Phase shot state
execute unless score @s ec.sp_charges matches 1.. run scoreboard players set @s ec.sp_charges 0

# Long-range hit tracking
scoreboard players set @s ec.sp_combo 0
