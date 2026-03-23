# Calculate requirements for Culinary level-up
# XP cost: (level + 1) * 4 vanilla levels
# Stat req: (level + 1) * 50 meals cooked

# XP cost
scoreboard players operation @s adv.req_xp = @s adv.culinary
scoreboard players add @s adv.req_xp 1
scoreboard players operation @s adv.req_xp *= #4 adv.temp

# Stat requirement
scoreboard players operation @s adv.req_stat = @s adv.culinary
scoreboard players add @s adv.req_stat 1
scoreboard players operation @s adv.req_stat *= #mult_culinary adv.temp
