# Tomb System — Load/Init
# Soul grave system: sword + stone + soul particles on death

# === SCOREBOARDS ===
scoreboard objectives add ec.tomb_death deathCount "Tomb Death Detect"
scoreboard objectives add ec.tomb_id dummy "Tomb Grave ID"
scoreboard objectives add ec.tomb_uuid0 dummy "Tomb UUID 0"
scoreboard objectives add ec.tomb_uuid1 dummy "Tomb UUID 1"
scoreboard objectives add ec.tomb_uuid2 dummy "Tomb UUID 2"
scoreboard objectives add ec.tomb_uuid3 dummy "Tomb UUID 3"
scoreboard objectives add ec.tomb_sword dummy "Tomb Sword Tier"
scoreboard objectives add ec.tomb_count dummy "Tomb Active Count"
scoreboard objectives add ec.tomb_accept trigger "Tomb Accept Recovery"
scoreboard objectives add ec.tomb_deny trigger "Tomb Deny Recovery"
scoreboard objectives add ec.tomb_carry dummy "Tomb Carry Grave ID"
scoreboard objectives add ec.tomb_carry_o0 dummy "Tomb Carry Owner UUID 0"
scoreboard objectives add ec.tomb_carry_o1 dummy "Tomb Carry Owner UUID 1"
scoreboard objectives add ec.tomb_carry_o2 dummy "Tomb Carry Owner UUID 2"
scoreboard objectives add ec.tomb_carry_o3 dummy "Tomb Carry Owner UUID 3"
scoreboard objectives add ec.tomb_finder0 dummy "Tomb Finder UUID 0"
scoreboard objectives add ec.tomb_finder1 dummy "Tomb Finder UUID 1"
scoreboard objectives add ec.tomb_finder2 dummy "Tomb Finder UUID 2"
scoreboard objectives add ec.tomb_finder3 dummy "Tomb Finder UUID 3"
scoreboard objectives add ec.tomb_pending_cd dummy "Tomb Pending Countdown"

# Enable triggers for all players
scoreboard players enable @a ec.tomb_accept
scoreboard players enable @a ec.tomb_deny

# Global grave ID counter (starts at 1 if not set)
execute unless score #tomb_next_id ec.var matches 1.. run scoreboard players set #tomb_next_id ec.var 1

# === CONSTANTS ===
# 72000 ticks = 60 minutes (our day cycle) — grave lifetime
# #72000 ec.const already exists in init
# #4 for XP division (25%)
scoreboard players set #4 ec.const 4
scoreboard players set #1200 ec.const 1200
scoreboard players set #20 ec.const 20

# === GAMERULE ===
# keepInventory must be ON — our tomb system handles all item dropping
gamerule minecraft:keep_inventory true

# === SCHEDULE BOOTSTRAP ===
# Tomb tick runs on 10-tick self-schedule for performance
schedule function evercraft:tomb/tick 10t
