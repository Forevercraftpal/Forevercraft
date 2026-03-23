# Beastlord — Wolf Warp Strike (orchestrator)
# Runs as beastlord player when wolf warp timer hits 0
# Each owned wolf warps to nearest hostile and deals bonus damage

# Tag self for owner matching
tag @s add bl.owner

# For each wolf within 16 blocks, run strike if owned by this player
# Skip sitting wolves — only standing wolves warp strike
execute at @s as @e[type=wolf,distance=..16,nbt=!{Sitting:1b}] run function evercraft:artifacts/beastlord/warp/wolf_strike

# Clean up
tag @s remove bl.owner

# Reset wolf warp timer
function evercraft:artifacts/beastlord/warp/reset_wolf
