# Blitz — Agility + Victorian combo
# Trigger: Agility player (10+) is sprinting (checked per tick, gated by cooldown)
# Effect: Nearby Victorian players (10+) get Haste I for 6s
# Called from party/combos/check_all when sprint predicate is true

# Run as the Agility player
execute unless score @s ec.party_id matches 1.. run return 0
execute unless score @s adv.agility matches 10.. run return 0
execute if score @s ec.pc_blitz_cd matches 1.. run return 0

# Set cooldown (20s = 400 ticks)
scoreboard players set @s ec.pc_blitz_cd 400

# Store party ID
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Apply attack speed boost to Victorian party members
function evercraft:party/combos/blitz_apply with storage evercraft:party temp

# Notify
function evercraft:party/combos/blitz_notify with storage evercraft:party temp

# Discovery check
function evercraft:party/combos/discover_blitz
