# Lance (Uncommon) — Passive: Pet Armor Boost
# Player gains +1 armor per nearby owned pet (max +4)
# Refreshes every 2 seconds (gated on str_tick)

# Only apply every 40 ticks (synced with strength aura refresh)
execute unless score @s ec.bl_str_tick matches 1 run return 0

# Remove previous armor modifier (clean slate)
attribute @s armor modifier remove evercraft:bl_lance_armor

# Count owned tameables within 16 blocks
tag @s add bl.owner
execute at @s as @e[type=wolf,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=cat,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=parrot,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=fox,distance=..16,tag=ec.fox_tamed] run function evercraft:artifacts/beastlord/check_owned
tag @s remove bl.owner

# Count owned pets
scoreboard players set #bl_pet_count ec.var 0
execute as @e[tag=bl.owned] run scoreboard players add #bl_pet_count ec.var 1

# Cleanup pet tags
tag @e[tag=bl.owned] remove bl.owned

# No pets = no bonus
execute if score #bl_pet_count ec.var matches 0 run return 0

# Apply armor modifier: +1 per pet, capped at 4
execute if score #bl_pet_count ec.var matches 4.. run scoreboard players set #bl_pet_count ec.var 4
execute if score #bl_pet_count ec.var matches 1 run attribute @s armor modifier add evercraft:bl_lance_armor 1 add_value
execute if score #bl_pet_count ec.var matches 2 run attribute @s armor modifier add evercraft:bl_lance_armor 2 add_value
execute if score #bl_pet_count ec.var matches 3 run attribute @s armor modifier add evercraft:bl_lance_armor 3 add_value
execute if score #bl_pet_count ec.var matches 4 run attribute @s armor modifier add evercraft:bl_lance_armor 4 add_value
