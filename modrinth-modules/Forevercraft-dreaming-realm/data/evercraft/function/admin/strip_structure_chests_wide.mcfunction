# Admin: Strip all structure loot markers within 256 blocks (large area)
# Run as operator at their position
# Removes looted-marker AND refresh-marker entities so structures fully reset

# Count before removal
execute store result score #removed ec.temp if entity @e[type=marker,tag=cf.looted_marker,distance=..256]
execute store result score #removed2 ec.temp if entity @e[type=marker,tag=cf.refresh_marker,distance=..256]
scoreboard players operation #removed ec.temp += #removed2 ec.temp

# Kill all looted and refresh markers in range
kill @e[type=marker,tag=cf.looted_marker,distance=..256]
kill @e[type=marker,tag=cf.refresh_marker,distance=..256]

# Report
tellraw @s [{text:"[Admin] ",color:"dark_red"},{text:"Stripped structure loot markers in 256-block radius. ",color:"gold"},{text:"Removed: ",color:"gray"},{score:{name:"#removed",objective:"ec.temp"},color:"yellow"}]
playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 0.5 1.0
