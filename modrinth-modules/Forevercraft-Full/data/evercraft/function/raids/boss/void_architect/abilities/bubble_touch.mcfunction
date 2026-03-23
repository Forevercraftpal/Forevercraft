# Void Architect — Levitation Bubble Touched
# Called as bubble entity when a player is within 1.5 blocks

# Give nearest player Levitation for 3 seconds
effect give @a[tag=ec.rd_participant,distance=..1.5,limit=1,sort=nearest] levitation 3 1 true

# Feedback
execute at @s run playsound minecraft:entity.player.splash hostile @a[tag=ec.rd_participant,distance=..10] ~ ~ ~ 0.8 1.5
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 15

# Consume bubble
kill @s
