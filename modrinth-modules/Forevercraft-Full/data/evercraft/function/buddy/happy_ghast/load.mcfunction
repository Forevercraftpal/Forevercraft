# Happy Ghast Taming System — Load
# Allows players to tame happy ghasts with slime balls

# === SCOREBOARDS ===
scoreboard objectives add ghast.owner dummy
scoreboard objectives add ghast.tame_prog dummy
scoreboard objectives add ghast.sitting dummy

# Global owner ID counter (preserve across reloads)
execute unless score #ghast_owner_next ghast.owner matches 1.. run scoreboard players set #ghast_owner_next ghast.owner 1

# Revoke advancements so they can re-fire
advancement revoke @a only evercraft:happy_ghast/feed
advancement revoke @a only evercraft:happy_ghast/interact_tamed

# Start tick loop
schedule function evercraft:buddy/happy_ghast/tick 5t replace
