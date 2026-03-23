# Weapon & Armor Mastery XP detection — 10-tick self-schedule
# OPT: Slowed from 4t to 10t — XP level changes are not time-critical (0.5s delay is unnoticeable)
schedule function evercraft:weapon_mastery/xp_tick 10t

# Gate: skip if no players online
execute unless entity @a run return 0

# Unified XP check for all players (weapons + armor)
execute as @a run function evercraft:weapon_mastery/xp_check_all
