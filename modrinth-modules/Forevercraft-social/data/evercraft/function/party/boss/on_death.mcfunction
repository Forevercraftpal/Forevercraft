# Party Boss Death Handler — Custom respawn with Weakness
# Called from tomb/on_death when a boss fight is active
# Run as the dying player

# Only apply if a boss is active and player is within 150 blocks of it
execute unless score #wb_active ec.var matches 1 run return 0

# Apply Weakness IV for 30 seconds on respawn (anti-death-zerg)
# Schedule this to apply AFTER the player respawns (2 ticks later)
tag @s add party.boss_death
schedule function evercraft:party/boss/apply_weakness 2t append
