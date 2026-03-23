# Showcase — Scan all registry achievements for unlocked ones
# Run as player. Populates temp.unlocked[] with achievements the player has earned.

# Clear unlocked list
data modify storage evercraft:showcase temp.unlocked set value []

# Check all ~102 achievements in 5 batches
function evercraft:codex/friends/showcase/scan_batch_1
function evercraft:codex/friends/showcase/scan_batch_2
function evercraft:codex/friends/showcase/scan_batch_3
function evercraft:codex/friends/showcase/scan_batch_4
function evercraft:codex/friends/showcase/scan_batch_5
