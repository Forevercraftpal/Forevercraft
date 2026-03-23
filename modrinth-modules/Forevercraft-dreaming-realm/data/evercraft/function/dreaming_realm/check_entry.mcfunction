# Dreaming Realm — Check Entry
# Called for each sleeping player before sleep skip
# Context: as @s = sleeping player, at @s = player position

# Already in dream
execute if score @s ec.dream_active matches 1 run return 0

# Check cooldown (gametime-based: ec.dream_cd = gametime when cooldown expires)
execute store result score #dr_now ec.var run time query gametime
execute if score @s ec.dream_cd matches 1.. if score #dr_now ec.var < @s ec.dream_cd run return 0

# Check not in party (solo experience)
execute if score @s ec.party_id matches 1.. run return 0

# Check no other player is already in the realm
execute if score #dr_active ec.var matches 1 run return 0

# Get dream rate (luck attribute × 10)
execute store result score @s ec.temp run attribute @s luck get 10

# Roll based on DR tier
execute if score @s ec.temp matches ..299 run function evercraft:dreaming_realm/roll/lucky_dream
execute if score @s ec.temp matches 300..399 run function evercraft:dreaming_realm/roll/tier_30
execute if score @s ec.temp matches 400..449 run function evercraft:dreaming_realm/roll/tier_40
execute if score @s ec.temp matches 450..499 run function evercraft:dreaming_realm/roll/tier_45
execute if score @s ec.temp matches 500.. run function evercraft:dreaming_realm/roll/tier_50
