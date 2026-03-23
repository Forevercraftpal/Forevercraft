# Shield Wall — Vitality + Evasion combo
# Trigger: Vitality player (15+) blocks a hit with shield
# Effect: Nearby Evasion players (10+) get guaranteed dodge for 5s
# Called via advancement trigger on shield block

# Run as the Vitality player who blocked
execute unless score @s ec.party_id matches 1.. run return 0
execute unless score @s adv.vitality matches 15.. run return 0
execute if score @s ec.pc_shield_cd matches 1.. run return 0

# Set cooldown (45s = 900 ticks)
scoreboard players set @s ec.pc_shield_cd 900

# Store party ID
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Grant guaranteed dodge to nearby Evasion party members
function evercraft:party/combos/shield_wall_apply with storage evercraft:party temp

# Notify party
function evercraft:party/combos/shield_wall_notify with storage evercraft:party temp

# Discovery check
function evercraft:party/combos/discover_shield_wall
