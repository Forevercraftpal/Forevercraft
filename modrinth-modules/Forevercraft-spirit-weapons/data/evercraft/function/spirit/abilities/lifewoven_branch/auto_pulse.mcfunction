# Lifewoven Branch — Auto-Pulse Check
# Check for allies below 25% HP within 15 blocks
# If found and not on cooldown: heal 8 HP (4 hearts), set 600-tick CD

# Check for any player (not self) below 25% HP within 15 blocks
# Use Health check: most players have 20 max HP, 25% = 5 HP
execute as @a[distance=..15,limit=1,sort=nearest] unless entity @s[tag=ec.sp_active] if data entity @s {Health:5.0f} run return 0

# Try to find a low-HP ally — heal the nearest one below 5 HP
execute as @a[distance=1..15,limit=1,sort=nearest] at @s run function evercraft:spirit/abilities/lifewoven_branch/pulse_heal
