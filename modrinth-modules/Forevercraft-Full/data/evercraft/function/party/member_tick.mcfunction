# Party System — Per-member tick (consolidates 6 @a scans → 1)
# Context: as @a[scores={ec.party_id=1..}] at @s

# Proximity check (sets ec.party_nearby for this player)
function evercraft:party/proximity/check

# Apply or remove buffs based on nearby count
execute if score @s ec.party_nearby matches 1.. run function evercraft:party/proximity/apply_buffs
execute if score @s ec.party_nearby matches 0 run function evercraft:party/proximity/remove_buffs

# Combo checks only when near party members
execute if score @s ec.party_nearby matches 1.. run function evercraft:party/combos/check_all

# Cooldown decrements
function evercraft:party/tick_cooldowns

# Sidebar update
function evercraft:party/sidebar/update
