# Journey Tools - Item Magnetism (10-tick schedule)
# Runs every 0.5s instead of every tick — gives block drops time to visually
# "pop out" before being pulled in. Items with pickup_delay still active are
# excluded (nbt=!{PickupDelay:32767s} prevents pulling uncollectable items).

# Apply magnet for any player holding a Journey tool in mainhand
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact_set:"journey"}] run tp @e[type=item,distance=..8,nbt=!{PickupDelay:32767s}] @s

# Also pull XP orbs
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact_set:"journey"}] run tp @e[type=experience_orb,distance=..8] @s

# Apply magnet for Hoe of Honor (artifact_set:"harvest")
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] run tp @e[type=item,distance=..8,nbt=!{PickupDelay:32767s}] @s
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{artifact:"hoe_of_honor"}] run tp @e[type=experience_orb,distance=..8] @s

# Self-schedule every 10 ticks (0.5 seconds)
schedule function evercraft:artifacts/mythical_tools/magnet 10t
