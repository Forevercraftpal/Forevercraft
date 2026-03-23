# Glyphforge System — Load
# Workstation to permanently bind rune effects to weapons/armor

# Scoreboards
scoreboard objectives add rf.rune_id dummy "Deposited Rune ID (1-13)"
scoreboard objectives add rf.temp dummy "Glyphforge Temp"
scoreboard objectives add rf.state dummy "Glyphforge State"
scoreboard objectives add rf.timer dummy "Glyphforge Timer Temp"
scoreboard objectives add rf.menu_time dummy "Glyphforge Menu Inactivity"
scoreboard objectives add rf.slot dummy "Glyphforge Selected Slot Cache"
scoreboard objectives add rf.warp_cd dummy "Hearthstone Glyph Pet Warp CD"

# Initialize
execute unless score #rf_active ec.var matches 0.. run scoreboard players set #rf_active ec.var 0

# Bootstrap schedule
schedule function evercraft:glyphforge/tick 1s replace
