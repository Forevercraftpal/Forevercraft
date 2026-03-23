# Beastlord — Parrot Warp Strike (orchestrator)
# Runs as beastlord player when parrot warp timer hits 0
# Parrots warp to small prey (rabbits, fish, etc.) and instant kill

# Tag self for owner matching
tag @s add bl.owner

# For each parrot within 16 blocks, run strike if owned by this player
execute at @s as @e[type=parrot,distance=..16] run function evercraft:artifacts/beastlord/warp/parrot_strike

# Clean up
tag @s remove bl.owner

# Reset parrot warp timer
function evercraft:artifacts/beastlord/warp/reset_parrot
