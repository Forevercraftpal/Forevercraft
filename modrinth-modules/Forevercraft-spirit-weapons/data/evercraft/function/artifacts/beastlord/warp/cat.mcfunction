# Beastlord — Cat Warp Strike (orchestrator)
# Runs as beastlord player when cat warp timer hits 0
# Cats warp to creepers ONLY and deal 7 damage (3-shot kill)

# Tag self for owner matching
tag @s add bl.owner

# For each cat within 16 blocks, run strike if owned by this player
# Skip sitting cats — only standing cats warp strike
execute at @s as @e[type=cat,distance=..16,nbt=!{Sitting:1b}] run function evercraft:artifacts/beastlord/warp/cat_strike

# Clean up
tag @s remove bl.owner

# Reset cat warp timer
function evercraft:artifacts/beastlord/warp/reset_cat
