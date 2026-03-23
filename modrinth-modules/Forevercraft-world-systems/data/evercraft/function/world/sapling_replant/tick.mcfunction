# Sapling Auto-Replant — Scheduled every 5 seconds
# Saplings on the ground for 30+ seconds have a 33% chance to plant themselves
# Uses a scoreboard timer on item entities (incremented every 5s, triggers at 6 = 30s)
# Gives up after 3 failed attempts to prevent over-replanting

# Re-schedule
schedule function evercraft:world/sapling_replant/tick 5s

# OPT: Single item tag check replaces 8 separate NBT scans (8 @e passes → 1)
execute as @e[type=item,nbt={OnGround:1b}] if items entity @s contents #evercraft:saplings run scoreboard players add @s ec.sapling_age 1

# At 6 ticks (30 seconds), attempt to plant (skip saplings that already failed 3 times)
execute as @e[type=item,scores={ec.sapling_age=6..,ec.sapling_try=..2}] at @s run function evercraft:world/sapling_replant/try_plant

# Reset timer so they get another chance in 30s if they didn't plant
scoreboard players set @e[type=item,scores={ec.sapling_age=6..}] ec.sapling_age 0
