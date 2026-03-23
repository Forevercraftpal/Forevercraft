# Calculate requirements for Fishing level-up
# XP cost: (level + 1) * 4 vanilla levels
# Stat req: (level + 1) * 2000 fish caught

# XP cost
scoreboard players operation @s adv.req_xp = @s adv.fishing
scoreboard players add @s adv.req_xp 1
scoreboard players operation @s adv.req_xp *= #4 adv.temp

# Stat requirement
scoreboard players operation @s adv.req_stat = @s adv.fishing
scoreboard players add @s adv.req_stat 1
scoreboard players operation @s adv.req_stat *= #mult_fishing adv.temp
