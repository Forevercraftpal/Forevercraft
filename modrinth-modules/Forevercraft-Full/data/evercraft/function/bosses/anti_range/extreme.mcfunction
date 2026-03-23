# Anti-Range — Extreme Tier (50+ blocks from boss)
# Called as the distant player

# Slowness IV + Weakness III + Wither II + Darkness for 3s
effect give @s slowness 3 3 true
effect give @s weakness 3 2 true
effect give @s wither 3 1 true
effect give @s darkness 3 0 true

# Reset warning throttle
scoreboard players set @s wb.range_warn 0
