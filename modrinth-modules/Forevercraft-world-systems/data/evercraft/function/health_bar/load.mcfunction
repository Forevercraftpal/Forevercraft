# RPG Health Bar — Load (N10)
# Creates boss bar pool, scoreboards, and starts tick loop

# Scoreboards
scoreboard objectives add hb.slot dummy "Health Bar Slot"
scoreboard objectives add hb.health dummy "HB Health"
scoreboard objectives add hb.maxhealth dummy "HB Max Health"
scoreboard objectives add hb.pct dummy "HB Percent"
scoreboard objectives add hb.linger dummy "HB Linger Timer"
scoreboard objectives add hb.enabled dummy "HB Enabled"
scoreboard objectives add hb.ray dummy "HB Ray Steps"

# Boss bar pool (10 slots — supports up to 10 simultaneous players)
bossbar add evercraft:hb_1 ""
bossbar add evercraft:hb_2 ""
bossbar add evercraft:hb_3 ""
bossbar add evercraft:hb_4 ""
bossbar add evercraft:hb_5 ""
bossbar add evercraft:hb_6 ""
bossbar add evercraft:hb_7 ""
bossbar add evercraft:hb_8 ""
bossbar add evercraft:hb_9 ""
bossbar add evercraft:hb_10 ""

# Configure all bars
bossbar set evercraft:hb_1 style notched_10
bossbar set evercraft:hb_1 max 100
bossbar set evercraft:hb_1 visible false
bossbar set evercraft:hb_2 style notched_10
bossbar set evercraft:hb_2 max 100
bossbar set evercraft:hb_2 visible false
bossbar set evercraft:hb_3 style notched_10
bossbar set evercraft:hb_3 max 100
bossbar set evercraft:hb_3 visible false
bossbar set evercraft:hb_4 style notched_10
bossbar set evercraft:hb_4 max 100
bossbar set evercraft:hb_4 visible false
bossbar set evercraft:hb_5 style notched_10
bossbar set evercraft:hb_5 max 100
bossbar set evercraft:hb_5 visible false
bossbar set evercraft:hb_6 style notched_10
bossbar set evercraft:hb_6 max 100
bossbar set evercraft:hb_6 visible false
bossbar set evercraft:hb_7 style notched_10
bossbar set evercraft:hb_7 max 100
bossbar set evercraft:hb_7 visible false
bossbar set evercraft:hb_8 style notched_10
bossbar set evercraft:hb_8 max 100
bossbar set evercraft:hb_8 visible false
bossbar set evercraft:hb_9 style notched_10
bossbar set evercraft:hb_9 max 100
bossbar set evercraft:hb_9 visible false
bossbar set evercraft:hb_10 style notched_10
bossbar set evercraft:hb_10 max 100
bossbar set evercraft:hb_10 visible false

# Slot availability tracking (0 = free, player's fake player name = claimed)
scoreboard players set #hb_slot_1 hb.slot 0
scoreboard players set #hb_slot_2 hb.slot 0
scoreboard players set #hb_slot_3 hb.slot 0
scoreboard players set #hb_slot_4 hb.slot 0
scoreboard players set #hb_slot_5 hb.slot 0
scoreboard players set #hb_slot_6 hb.slot 0
scoreboard players set #hb_slot_7 hb.slot 0
scoreboard players set #hb_slot_8 hb.slot 0
scoreboard players set #hb_slot_9 hb.slot 0
scoreboard players set #hb_slot_10 hb.slot 0

# Start tick loop
schedule function evercraft:health_bar/tick 2t
