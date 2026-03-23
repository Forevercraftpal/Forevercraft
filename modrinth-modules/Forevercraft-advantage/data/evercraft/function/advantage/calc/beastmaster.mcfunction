# Calculate requirements for Beastmaster level-up
# XP cost: (level + 1) * 4 vanilla levels
# Stat req: (level + 1) * 1 companion at max level

# XP cost
scoreboard players operation @s adv.req_xp = @s adv.beastmaster
scoreboard players add @s adv.req_xp 1
scoreboard players operation @s adv.req_xp *= #4 adv.temp

# Stat requirement
scoreboard players operation @s adv.req_stat = @s adv.beastmaster
scoreboard players add @s adv.req_stat 1
scoreboard players operation @s adv.req_stat *= #mult_beastmaster adv.temp
