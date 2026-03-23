# Rally Cry — Explorer + Any tree combo
# Trigger: Explorer player (15+) opens a first-time structure crate
# Effect: All party members within 48 blocks gain +2 Dream Rate for 5 min
# Called from structure crate opening function

# Run as the Explorer who opened the crate
execute unless score @s ec.party_id matches 1.. run return 0
execute unless score @s adv.explorer matches 15.. run return 0
# No cooldown — naturally gated by structure crate one-time opens

# Store party ID
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Apply temporary Dream Rate buff to all party members
# Rally DR timer = 5 real-time minutes = 6000 gametime ticks
function evercraft:party/combos/rally_cry_apply with storage evercraft:party temp

# Notify
function evercraft:party/combos/rally_cry_notify with storage evercraft:party temp

# Discovery check
function evercraft:party/combos/discover_rally_cry
