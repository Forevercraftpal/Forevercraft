# ============================================================
# Artifact Bounty Board — Cleanup at Board (lectern broken)
# Run as/at: ABB.Marker whose lectern block is gone
# Kills all ABB entities nearby (BM on_barrel_broken pattern)
# ============================================================

kill @e[type=text_display,tag=ABB.QBLabel,distance=..2]
kill @e[type=interaction,tag=ABB.Click,distance=..2]
kill @s
