# Beastmaster Level 25 — Cats scare away/kill nearby creepers
# Runs as part of the wolf_tick schedule

# Only process if any player has max beastmaster
execute unless entity @a[scores={adv.beastmaster=25}] run return 0

# Find tamed cats near creepers — check if owner has beastmaster 25
execute as @e[type=cat] on owner if score @s adv.beastmaster matches 25 at @s as @e[type=creeper,distance=..8] run function evercraft:advantage/beastmaster/kill_creeper
