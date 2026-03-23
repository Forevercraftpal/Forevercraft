# Admin: Strip all structure loot markers within 32 blocks
# Run as operator at their position
# Removes looted-marker entities so structures can respawn loot

# Count before removal
execute store result score #removed ec.temp if entity @e[type=marker,tag=cf.looted_marker,distance=..32]

# Kill all looted markers in range
kill @e[type=marker,tag=cf.looted_marker,distance=..32]

# Report
tellraw @s [{text:"[Admin] ",color:"dark_red"},{text:"Stripped structure loot markers in 32-block radius. ",color:"gold"},{text:"Removed: ",color:"gray"},{score:{name:"#removed",objective:"ec.temp"},color:"yellow"}]
playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 0.5 1.0
