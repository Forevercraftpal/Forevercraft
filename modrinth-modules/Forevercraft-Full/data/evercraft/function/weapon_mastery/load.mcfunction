# Weapon Mastery — Load/Init
# Register scoreboards
scoreboard objectives add wm.prev_xp dummy
scoreboard objectives add wm.curr_xp dummy
scoreboard objectives add wm.xp_gained dummy

# Start XP tick schedule (10t = 0.5s — XP changes aren't time-critical)
schedule function evercraft:weapon_mastery/xp_tick 10t
