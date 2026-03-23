# Reaper — Iron Golem Aggro (Villain, infamy >= 2000)
# Make nearby iron golems hostile to the villain
# Run as villain player at player

# Copy player UUID to storage for golem anger targeting
data modify storage evercraft:reaper target_uuid set from entity @s UUID

# Set angry_at on all nearby iron golems (not companion golems)
# 1.21.11: AngryAt → angry_at, AngerTime → anger_end_time (gametime-based)
execute as @e[type=iron_golem,distance=..32,tag=!rp.hunter,tag=!ec.sp_bear] run data modify entity @s angry_at set from storage evercraft:reaper target_uuid
# Set anger_end_time = current gametime + 400 ticks (20 seconds of aggro)
execute store result storage evercraft:reaper anger_end long 1 run time query gametime
execute store result score #rp_anger_end ec.temp run data get storage evercraft:reaper anger_end
scoreboard players add #rp_anger_end ec.temp 400
execute as @e[type=iron_golem,distance=..32,tag=!rp.hunter,tag=!ec.sp_bear] store result entity @s anger_end_time long 1 run scoreboard players get #rp_anger_end ec.temp
