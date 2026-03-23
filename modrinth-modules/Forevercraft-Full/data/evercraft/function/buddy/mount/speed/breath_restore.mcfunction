# Buddy Mount Speed — Restore Speed After Breath
# Scheduled 5 seconds after breath slowdown

# Restore speed bonus on all buddy mounts being ridden
execute as @a[scores={ec.bd_breath=1}] run scoreboard players set @s ec.bd_breath 0
execute as @e[tag=ec.bd_buddy,tag=ec.bd_speed_applied,type=#evercraft:tameable_companions] run function evercraft:buddy/mount/speed/apply_buddy_bonus_force
