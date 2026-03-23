# Artifact Kill Tracker — increment via scoreboard proxy
# Macro args: sig (artifact signature number)
# Run as the killing player

# Use a dedicated scoreboard for artifact kill counts keyed by signature
# Store kills per-artifact-signature on fake player #ak_<sig>
$scoreboard players add #ak_$(sig) ec.var 1
