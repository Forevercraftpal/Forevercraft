# Buddy Abilities — Per-Player Tick
# @s = player with a buddy, position context set
# Dispatches tier-appropriate abilities

# Early exit: no buddy entity nearby (most abilities require proximity)
# #Search already set by parent tick_player for ownership verification
execute unless entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..32,predicate=evercraft:buddy/check_owner,limit=1] run return fail

# === TIER 0: Acquaintance ===
# Heart particles when approaching buddy (within 5 blocks, every 5 seconds)
function evercraft:buddy/abilities/heart_particles

# === TIER 1+: Familiar ===
execute if score @s ec.bd_tier matches 1.. run function evercraft:buddy/abilities/weatherproof
execute if score @s ec.bd_tier matches 1.. run function evercraft:buddy/abilities/battle_cry/tick

# === TIER 2+: Trusted ===
execute if score @s ec.bd_tier matches 2.. run function evercraft:buddy/abilities/lucky_paws
execute if score @s ec.bd_tier matches 2.. run function evercraft:buddy/abilities/cozy_rest

# === TIER 3+: Devoted ===
execute if score @s ec.bd_tier matches 3.. run function evercraft:buddy/abilities/soullink_glow

# === TIER 4+: Eternal ===
execute if score @s ec.bd_tier matches 4.. run function evercraft:buddy/abilities/elemental_resistance
execute if score @s ec.bd_tier matches 4.. run function evercraft:buddy/abilities/war_companion/tick
execute if score @s ec.bd_tier matches 4.. run function evercraft:buddy/abilities/shared_vitality/on_lethal

# === TIER 5+: Mythic Bond ===
execute if score @s ec.bd_tier matches 5.. run function evercraft:buddy/abilities/buddy_aura/tick
execute if score @s ec.bd_tier matches 5.. run function evercraft:buddy/abilities/dimensional_bond

# Decrement ability cooldowns
execute if score @s ec.bd_cry_cd matches 1.. run scoreboard players remove @s ec.bd_cry_cd 1
execute if score @s ec.bd_meal_cd matches 1.. run scoreboard players remove @s ec.bd_meal_cd 1
execute if score @s ec.bd_last_cd matches 1.. run scoreboard players remove @s ec.bd_last_cd 1
execute if score @s ec.bd_vitality_cd matches 1.. run scoreboard players remove @s ec.bd_vitality_cd 1
