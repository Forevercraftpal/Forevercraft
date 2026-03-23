# The Crimson Bulwark — Banner Puzzle Tick
# Red banners can be pulled to reveal weak points on boss
# Hitting during weak point: bypasses ALL damage reduction, 2x damage
# Wrong timing (during shield spin): 6 damage to puller

# Banner particles
execute as @e[tag=ec.rd_cb_banner] at @s run particle minecraft:dust{color:[0.9,0.1,0.1],scale:0.8} ~ ~1.5 ~ 0.2 0.5 0.2 0 2

# Check banner clicks
execute as @e[tag=ec.rd_cb_banner] if data entity @s interaction at @s run function evercraft:raids/boss/crimson_bulwark/puzzle/banner_pull
