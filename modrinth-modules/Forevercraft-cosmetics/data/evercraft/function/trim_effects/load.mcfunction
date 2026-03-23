# Trim Effects - Load Function

# Create scoreboards for trim tracking
scoreboard objectives add lapis_trim dummy
scoreboard objectives add copper_trim dummy
scoreboard objectives add netherite_trim dummy
scoreboard objectives add emerald_trim dummy
scoreboard objectives add resin_trim dummy

# New scoreboards for reworked trims
scoreboard objectives add te.dodge dummy "Trim Dodge Chance"
scoreboard objectives add te.const dummy "Trim Constants"
scoreboard objectives add te.temp dummy "Trim Temp"
scoreboard objectives add te.quartz dummy "Quartz Trim Pieces"
scoreboard objectives add te.redstone dummy "Redstone Trim Pieces"
scoreboard objectives add te.fall_dist dummy "Netherite Fall Distance"

# Constants
scoreboard players set #two te.const 2

# Bootstrap 1s schedule for attribute-based trim materials
schedule function evercraft:trim_effects/check_slow 1s
