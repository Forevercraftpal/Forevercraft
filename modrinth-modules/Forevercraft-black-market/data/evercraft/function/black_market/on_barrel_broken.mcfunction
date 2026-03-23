# ============================================================
# Black Market — Barrel broken cleanup
# Run as/at: BM.Barrel marker whose barrel block is gone
# Kills the marker and its floating label
# ============================================================

# Kill the label
kill @e[type=text_display,tag=BM.Label,distance=..2]

# Kill the marker itself
kill @s
