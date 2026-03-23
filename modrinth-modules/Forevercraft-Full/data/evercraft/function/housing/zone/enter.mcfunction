# ============================================================
# Housing Zone — Player entered their home zone
# Run as: player
# ============================================================

scoreboard players set @s hs.in_zone 1

# Apply DR modifier for tier 3+ (attribute modifier persists, removed on leave)
attribute @s luck modifier remove evercraft:housing_dr
execute if score @s hs.tier matches 3..4 run attribute @s luck modifier add evercraft:housing_dr 0.05 add_value
execute if score @s hs.tier matches 5 run attribute @s luck modifier add evercraft:housing_dr 0.1 add_value

# Apply home companion abilities (if any placed)
execute if score @s hc.count matches 1.. run function evercraft:companions/handler/home/abilities/apply_all

# Subtle enter notification (actionbar)
title @s actionbar [{text:"\u2302 ",color:"gold"},{text:"Home Zone",color:"yellow"}]
playsound minecraft:block.note_block.chime player @s ~ ~ ~ 0.3 1.5
