# Beastlord — Cat Phantom Hunt (orchestrator)
# Runs every tick when phantoms are near a beastlord player
# Cats warp to phantoms and instantly kill them — NO cooldown

# Tag self for owner matching
tag @s add bl.owner

# For each cat within 16 blocks, run phantom strike if owned by this player
execute at @s as @e[type=cat,distance=..16] run function evercraft:artifacts/beastlord/warp/cat_phantom_strike

# Clean up
tag @s remove bl.owner
