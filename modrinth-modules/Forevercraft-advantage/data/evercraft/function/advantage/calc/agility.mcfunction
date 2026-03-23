# Calculate requirements for Agility level-up
# XP cost: (level + 1) * 4 vanilla levels
# Stat req: (level + 1) * 4000 blocks walked

# XP cost
scoreboard players operation @s adv.req_xp = @s adv.agility
scoreboard players add @s adv.req_xp 1
scoreboard players operation @s adv.req_xp *= #4 adv.temp

# Stat requirement
scoreboard players operation @s adv.req_stat = @s adv.agility
scoreboard players add @s adv.req_stat 1
scoreboard players operation @s adv.req_stat *= #mult_agility adv.temp
