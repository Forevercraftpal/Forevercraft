# Zephyr Edge — Detection Init
# Run as @s when spirit weapon ID 4 (Dancer fan) detected in mainhand

# Apply +20% movement speed passive
attribute @s movement_speed modifier add evercraft:spirit_speed_bonus 0.2 add_multiplied_total

# Initialize wind charges
scoreboard players set @s ec.sp_charges 0
