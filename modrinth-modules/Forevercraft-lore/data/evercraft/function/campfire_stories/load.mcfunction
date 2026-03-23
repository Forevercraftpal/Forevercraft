# ============================================================
# Campfire Stories — Load
# Init scoreboards and start check loop
# ============================================================

scoreboard objectives add ec.cf_near dummy
scoreboard players set #cf_cooldown ec.var 0

# History tracking (anti-repeat: last 3 story indices)
scoreboard players set #cf_last1 ec.var -1
scoreboard players set #cf_last2 ec.var -1
scoreboard players set #cf_last3 ec.var -1

# History count
scoreboard players set #cf_count ec.var 0

# Initialize history storage if empty
execute unless data storage evercraft:campfire {history:[]} run data modify storage evercraft:campfire history set value []

schedule function evercraft:campfire_stories/check 100t
