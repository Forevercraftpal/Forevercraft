# Guild Companion — Passive RP gain (gametime-based)
# Called from guild/pets/tick every 5s
# +1 RP every 10 minutes (12000 ticks)

# Get current gametime
execute store result score #now gc.rp_timer run time query gametime

# Process each guild companion
execute as @e[type=item_display, tag=GC.Head] run function evercraft:guild/pets/passive_rp_check
