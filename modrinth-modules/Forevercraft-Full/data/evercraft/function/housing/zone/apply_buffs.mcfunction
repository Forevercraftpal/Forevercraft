# ============================================================
# Housing Zone — Apply tier-based buffs
# Run as: player in their home zone (hs.in_zone = 1)
# Called every 2s from zone/check while in zone
# Potion effects given with 5s duration (2s refresh = always active)
# DR handled by attribute modifier (applied on enter, removed on leave)
# ============================================================

# Tier 1+: Regeneration I (5s) — harmonized to II if also in guild zone
execute unless score @s ec.guild_in_zone matches 1 run effect give @s regeneration 5 0 true
execute if score @s ec.guild_in_zone matches 1 run effect give @s regeneration 5 1 true

# Tier 2+: Saturation (5s)
execute if score @s hs.tier matches 2.. run effect give @s saturation 5 0 true

# Tier 3+: DR bonus handled by attribute modifier in zone/enter (0.05 or 0.1 luck)

# Tier 4+: Fire Resistance (5s)
execute if score @s hs.tier matches 4.. run effect give @s fire_resistance 5 0 true

# Tier 5: Resistance I (5s) — harmonized to II if also in guild zone
execute if score @s hs.tier matches 5 unless score @s ec.guild_in_zone matches 1 run effect give @s resistance 5 0 true
execute if score @s hs.tier matches 5 if score @s ec.guild_in_zone matches 1 run effect give @s resistance 5 1 true

# Calendar + Housing: Active calendar event grants bonus home buff
# Harvest Festival (1): +Saturation II at home (stacks with tier 2 saturation I)
execute if score #cal_event_id ec.var matches 1 run effect give @s saturation 5 1 true
# Prosperity Tide (7): +Luck of the Sea feel — bonus Hero of the Village at home
execute if score #cal_event_id ec.var matches 7 run effect give @s hero_of_the_village 5 0 true

# Home Ecosystem: Passive advantage XP while at home (called every 2s, 20% chance = ~1 per 10s)
# Tier 2+: +1 Cooking progress (home cooking practice)
# Tier 3+: +1 Gathering progress (home garden tending)
# Tier 4+: +1 XP level (passive rest XP)
execute if score @s hs.tier matches 2.. if predicate {"condition":"minecraft:random_chance","chance":0.2} run scoreboard players add @s adv.stat_cook 1
execute if score @s hs.tier matches 3.. if predicate {"condition":"minecraft:random_chance","chance":0.2} run scoreboard players add @s adv.stat_harvest 1
execute if score @s hs.tier matches 4.. if predicate {"condition":"minecraft:random_chance","chance":0.1} run experience add @s 3 points

# Tier 3+: Pet Warp Strike — home pets defend the homestead (every 10s = 5 cycles of 2s tick)
execute if score @s hs.tier matches 3.. run scoreboard players remove @s hs.warp_cd 1
execute if score @s hs.tier matches 3.. if score @s hs.warp_cd matches ..0 run function evercraft:housing/pet_warp/strike_home
execute if score @s hs.tier matches 3.. if score @s hs.warp_cd matches ..0 run scoreboard players set @s hs.warp_cd 5

# Zone Protection: Tamed cats, dogs, and parrots owned by homeowner get Regen I + Resistance I (5s)
tag @s add ec.zone_owner
execute at @s as @e[type=#evercraft:zone_protected_pets,tag=ec.tame_protected,distance=..64] run function evercraft:housing/zone/buff_owner_pets
tag @s remove ec.zone_owner
