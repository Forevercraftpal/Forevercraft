# Buddy Mount Speed — Breath Check
# @s = buddy mount entity being ridden
# Every 30 seconds of continuous riding, slow down for 5 seconds

# Get owner's continuous ride time
execute as @a[distance=..5,scores={ec.bd_ride_cont=1..}] run function evercraft:buddy/mount/speed/breath_eval
