# Tamable Ocelot System — Load
# Allows players to tame ocelots with raw cod/salmon
# Tamed ocelots follow, sit on command, teleport when far

# === SCOREBOARDS ===
scoreboard objectives add ocelot.owner dummy
scoreboard objectives add ocelot.tame_prog dummy
scoreboard objectives add ocelot.sitting dummy

# Global owner ID counter (preserve across reloads)
execute unless score #ocelot_owner_next ocelot.owner matches 1.. run scoreboard players set #ocelot_owner_next ocelot.owner 1

# Revoke advancements so they can re-fire
advancement revoke @a only evercraft:ocelots/feed_fish
advancement revoke @a only evercraft:ocelots/interact_tamed

# Start tick loops
schedule function evercraft:ocelots/tick 5t replace
schedule function evercraft:ocelots/combat_tick 20t replace
