# Forge Bond — Blacksmith + Dexterity combo
# Trigger: Blacksmith player (15+) completes a smithing table operation
# Effect: Both players get +50 Advantage XP in their trees
# Called via advancement trigger on smithing table use

# Run as the Blacksmith player
execute unless score @s ec.party_id matches 1.. run return 0
execute unless score @s adv.blacksmith matches 15.. run return 0
execute if score @s ec.pc_forge_cd matches 1.. run return 0

# Check for nearby Dexterity party member
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id
execute store result score #fb_found ec.temp run function evercraft:party/combos/forge_bond_check with storage evercraft:party temp
execute unless score #fb_found ec.temp matches 1.. run return 0

# Set cooldown (30s = 600 ticks)
scoreboard players set @s ec.pc_forge_cd 600

# Grant XP to both
scoreboard players add @s adv.stat_smelt 50
function evercraft:party/combos/forge_bond_apply with storage evercraft:party temp

# Notify
function evercraft:party/combos/forge_bond_notify with storage evercraft:party temp

# Discovery check
function evercraft:party/combos/discover_forge_bond
