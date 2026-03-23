# Buddy Revival — Midnight Ceremony
# @s = player reviving their buddy at midnight
# Uses the existing tomb/memento system but with relaxed conditions

# Visual ceremony
execute at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.02 15
execute at @s run particle minecraft:enchant ~ ~2 ~ 0.5 0.5 0.5 0.5 30
playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 0.6
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.2

tellraw @s [{text:"\n"},{text:"[Buddy] ",color:"#FFD700"},{text:"The midnight air shimmers...",color:"dark_purple"},{text:"\n"},{text:"Your buddy's spirit stirs and returns to the world.",color:"yellow"},{text:"\n"}]

# The actual entity respawn will be handled by the existing tomb system
# with the buddy flag checking for midnight instead of full moon
# This function serves as the ceremony wrapper
