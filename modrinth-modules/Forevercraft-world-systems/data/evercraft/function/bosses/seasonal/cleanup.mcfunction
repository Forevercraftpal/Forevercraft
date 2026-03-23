# World Boss — Seasonal Cleanup
# Called from bosses/cleanup.mcfunction when boss dies/despawns
# Removes any seasonal state

# Reset seasonal cooldown
scoreboard players set #wb_season_cd ec.var 0

# Remove water state tag from boss (may already be dead, but belt & suspenders)
tag @e[tag=wb.boss] remove wb.in_water
