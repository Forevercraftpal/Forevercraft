# Tamable Fox System — Load
# Allows players to tame foxes (red + snow) with sweet berries
# Tamed foxes follow, sit on command, teleport when far

# === SCOREBOARDS ===
scoreboard objectives add fox.owner dummy
scoreboard objectives add fox.tame_prog dummy
scoreboard objectives add fox.sitting dummy

# Global owner ID counter (preserve across reloads)
execute unless score #fox_owner_next fox.owner matches 1.. run scoreboard players set #fox_owner_next fox.owner 1

# Revoke advancements so they can re-fire
advancement revoke @a only evercraft:foxes/feed_berry
advancement revoke @a only evercraft:foxes/interact_tamed

# Start tick loops
schedule function evercraft:foxes/tick 5t replace
schedule function evercraft:foxes/combat_tick 20t replace
