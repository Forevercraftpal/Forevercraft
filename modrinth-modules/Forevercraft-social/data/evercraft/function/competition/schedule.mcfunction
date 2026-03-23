# Competition — Schedule (called during dawn reset)
# 40% chance a competition runs today

# Don't schedule if one is already active
execute if score #comp_active ec.var matches 1..6 run return 0

# Roll 1-10: values 1-4 = competition today (40%)
execute store result score #roll ec.temp run random value 1..10
execute if score #roll ec.temp matches 1..4 run function evercraft:competition/pick_type
execute if score #roll ec.temp matches 5..10 run scoreboard players set #comp_day_type ec.var 0
