# Fountain interaction — player right-clicked the fountain
# Runs as @s = interaction entity (ec.fountain_click), at @s
# Detected by: if data entity @s interaction

# Find the player who right-clicked via nearest player within range
# (on attacker only works for left-click/attack, not right-click/interaction)
# Guard: skip if player already has a menu open (prevents lucid claim double-open)
execute as @p[distance=..5,tag=!Adv.InMenu,tag=!ec.InFountain] at @s run function evercraft:gacha/fountain/menu/open

# Clear interaction data
data remove entity @s interaction
