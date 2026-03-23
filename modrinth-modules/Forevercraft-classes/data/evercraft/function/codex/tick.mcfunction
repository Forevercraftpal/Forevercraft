# Tick function for The Forevercraft Codex system
# Detects when players use the codex item → opens hub GUI
# All interactions now go through the entity-based hub (no more shift distinction or triggers)

# (Player existence guaranteed by main tick.mcfunction)

# OPT: Single @a dispatch replaces 4 separate @a scans
execute as @a[scores={ec.codex_use=1..},tag=!Adv.InMenu] at @s run function evercraft:codex/tick_player

# Held-right-click suppression: right-click also triggers interaction entities.
# While player holds right-click in menu, keep cooldown at 1 so hub/tick flushes interaction data.
# Only sets cooldown if it's currently 0 (doesn't override the initial 3-tick open cooldown).
execute as @a[scores={ec.codex_use=1..},tag=Adv.InMenu] unless score @s adv.gui_cd matches 1.. run scoreboard players set @s adv.gui_cd 1

# Reset use score
scoreboard players set @a[scores={ec.codex_use=1..}] ec.codex_use 0

# Legacy trigger cleanup — reset any stale old codex trigger values
# OPT: Removed full route function call (59 @a scans) — hub GUI handles everything now
scoreboard players set @a[scores={ec.codex=1..}] ec.codex 0
