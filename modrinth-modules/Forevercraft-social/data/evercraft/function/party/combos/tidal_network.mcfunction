# Tidal Network — Fishing + Explorer passive combo
# Fisher 10+ near Explorer 10+ — fisher gets +1 Luck of the Sea, explorer gets DR bonus
# Run as player in party, at their position

# Reset flag
scoreboard players set @s ec.pc_tidal 0

# Only relevant if this player has Fishing 10+ or Explorer 10+
execute unless score @s adv.fishing matches 10.. unless score @s adv.explorer matches 10.. run return 0

# Check if a party member nearby has the complementary tree
function evercraft:party/combos/tidal_network_check with storage evercraft:party temp
