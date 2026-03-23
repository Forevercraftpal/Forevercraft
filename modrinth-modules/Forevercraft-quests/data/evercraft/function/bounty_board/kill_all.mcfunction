# ============================================================
# Artifact Bounty Board — Kill All ABB Entities (manual cleanup)
# Run: /function evercraft:bounty_board/kill_all
# Tick will respawn them fresh at quest boards
# ============================================================

kill @e[type=text_display,tag=ABB.Label]
kill @e[type=text_display,tag=ABB.QBLabel]
kill @e[type=interaction,tag=ABB.Click]
kill @e[type=marker,tag=ABB.Marker]
tellraw @a ["",{"text":"[Bounty Board] ","color":"yellow"},{"text":"All bounty board entities cleared. They will respawn shortly.","color":"gray"}]
