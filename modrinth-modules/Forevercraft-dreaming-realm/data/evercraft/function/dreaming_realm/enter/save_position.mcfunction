# Dreaming Realm — Save Return Position
# Summons a marker entity at the player's current position to remember where to return
# Also copies the player's rotation for accurate restoration

summon marker ~ ~ ~ {Tags:["dr.return"]}
data modify entity @e[type=marker,tag=dr.return,limit=1] Rotation set from entity @s Rotation
