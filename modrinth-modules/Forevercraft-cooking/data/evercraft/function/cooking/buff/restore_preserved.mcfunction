# Cooking Preservation — Restore buffs after death
# Called on tick for players with CK.PreserveRestore tag who are alive
# Re-applies Well-Fed attribute modifier (may have been cleared by death)

tag @s remove CK.PreserveRestore

# Re-apply Well-Fed modifier (death may clear attribute modifiers in some cases)
attribute @s minecraft:luck modifier remove evercraft:well_fed
attribute @s minecraft:luck modifier add evercraft:well_fed 0.5 add_value

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Well-Fed buff restored!",color:"aqua"},{text:" (",color:"gray"},{"score":{"name":"@s","objective":"ec.ck_preserve"},"color":"yellow"},{text:" charges remaining)",color:"gray"}]
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.5
