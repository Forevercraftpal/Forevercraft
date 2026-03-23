# Field Medic — Vitality + Taskmaster combo
# Trigger: Vitality player (15+) eats golden food
# Effect: Nearby Taskmaster players (10+) healed 4 hearts + Regen I for 5s
# Called via advancement trigger on golden food consumption

# Run as the Vitality player who ate
execute unless score @s ec.party_id matches 1.. run return 0
execute unless score @s adv.vitality matches 15.. run return 0
execute if score @s ec.pc_medic_cd matches 1.. run return 0

# Set cooldown (60s = 1200 ticks)
scoreboard players set @s ec.pc_medic_cd 1200

# Store party ID
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Heal nearby Taskmaster party members
function evercraft:party/combos/field_medic_apply with storage evercraft:party temp

# Notify
function evercraft:party/combos/field_medic_notify with storage evercraft:party temp

# Discovery check
function evercraft:party/combos/discover_field_medic
