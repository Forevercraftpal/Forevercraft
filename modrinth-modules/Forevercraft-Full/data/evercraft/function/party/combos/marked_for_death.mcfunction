# Marked for Death — Stealth + Victorian combo
# Trigger: Stealth player (10+) sneaks near hostile mob for 3+ seconds
# Effect: Mob gets Glowing, Victorian players (10+) deal +25% damage to marked targets (10s)
# Called from advantage/tick when stealth player sneaks near mob

# Run as the Stealth player, at their position
# Verify: in party, has stealth 10+, off cooldown
execute unless score @s ec.party_id matches 1.. run return 0
execute unless score @s adv.stealth matches 10.. run return 0
execute if score @s ec.pc_mark_cd matches 1.. run return 0

# Must be sneaking
execute unless predicate evercraft:advantage/is_sneaking run return 0

# Find nearest hostile mob within 8 blocks and mark it
execute store result score #mark_found ec.temp if entity @e[type=!player,type=!armor_stand,type=!marker,type=!item,type=!experience_orb,distance=..8,limit=1,sort=nearest,nbt={Brain:{}}]
execute unless score #mark_found ec.temp matches 1.. run return 0

# Mark the mob
execute as @e[type=!player,type=!armor_stand,type=!marker,type=!item,type=!experience_orb,distance=..8,limit=1,sort=nearest,nbt={Brain:{}}] run function evercraft:party/combos/apply_mark

# Set cooldown (30s = 600 ticks)
scoreboard players set @s ec.pc_mark_cd 600

# Store party ID for macro
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Notify party
function evercraft:party/combos/marked_notify with storage evercraft:party temp

# Track for achievements
scoreboard players add @s ach.combos_triggered 1

# Grant affinity XP for triggering a party combo
scoreboard players set #delta ec.temp 3000
function evercraft:affinity/grant_current

# Discovery check (discover_marked does its own bitfield check internally)
function evercraft:party/combos/discover_marked
