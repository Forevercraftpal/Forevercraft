# Wise Wanderer — Detect Right-Click on Villager
# Runs every 1s via schedule. Uses talked_to_villager stat to detect clicks.
# We remove+re-add the objective each cycle to reset the counter cleanly.

schedule function evercraft:professions/jobs/wise_wanderer/gui/detect_interaction 1s replace

# Safety: if a player has WW.InMenu but no anchor exists, force-remove the tag
execute as @a[tag=WW.InMenu] at @s unless entity @e[type=minecraft:marker,tag=WW.MenuAnchor,distance=..10] run tag @s remove WW.InMenu

# Detect right-click: any player whose talked stat is 1+ AND nearest villager IS a Wise Wanderer
# Two-step: tag nearest villager, check if it's a WW, then run as player
# This prevents triggering when talking to other professions that happen to be near a WW
execute as @a[scores={ec.ww_talked=1..},tag=!WW.InMenu] at @s run tag @e[type=minecraft:villager,sort=nearest,distance=..5,limit=1] add WW.NearestCheck
execute as @a[scores={ec.ww_talked=1..},tag=!WW.InMenu] at @s if entity @e[type=minecraft:villager,tag=WW.NearestCheck,tag=more_professions_wise_wanderer,distance=..5,limit=1] run function evercraft:professions/jobs/wise_wanderer/gui/on_click
tag @e[type=minecraft:villager,tag=WW.NearestCheck] remove WW.NearestCheck

# Reset the stat by removing and re-adding the objective (resets all players to 0)
scoreboard objectives remove ec.ww_talked
scoreboard objectives add ec.ww_talked minecraft.custom:minecraft.talked_to_villager

# Per-tick maintenance for open GUIs
execute as @a[tag=WW.InMenu] at @s run function evercraft:professions/jobs/wise_wanderer/gui/tick
