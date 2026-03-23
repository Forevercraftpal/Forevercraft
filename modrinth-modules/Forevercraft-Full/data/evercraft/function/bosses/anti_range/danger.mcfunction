# Anti-Range — Danger Tier (35-50 blocks from boss)
# Called as the distant player

# Slowness III + Weakness II + Wither I for 3s
effect give @s slowness 3 2 true
effect give @s weakness 3 1 true
effect give @s wither 3 0 true

# Reset warning throttle (skip straight to danger messaging)
scoreboard players set @s wb.range_warn 0
