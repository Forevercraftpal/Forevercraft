# Resonance Strike — Click detected
# Run as interaction entity

# Clear click data
data remove entity @s interaction

# Find the player who owns this resonance (stamped with companion.id)
scoreboard players operation #cf_reso_owner ec.temp = @s ec.cf_reso
execute as @a[scores={ec.cf_reso=1},distance=..10] if score @s companion.id = #cf_reso_owner ec.temp at @s run function evercraft:craftforever/nodes/resonance/evaluate
