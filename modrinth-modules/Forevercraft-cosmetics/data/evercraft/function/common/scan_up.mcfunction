# Scan upward to find air-above-solid position (fallback when scan_down fails)
# Run as: temp marker, at: temp marker
# Uses: #scan_depth ec.temp (decremented each call)
# Returns: 1 if found (marker TPed to valid spot), 0 if depth exhausted

scoreboard players remove #scan_depth ec.temp 1
execute if score #scan_depth ec.temp matches ..0 run return 0

# Found valid spot: air here with solid below
execute if block ~ ~ ~ #evercraft:spawnable_air unless block ~ ~-1 ~ #evercraft:spawnable_air run return 1

# Keep scanning up (works through both air and solid)
tp @s ~ ~1 ~
execute at @s run function evercraft:common/scan_up
