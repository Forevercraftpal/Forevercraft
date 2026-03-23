# Pack Tactics — Beastmaster + Beastmaster passive combo
# When 2+ party members have Beastmaster 15+, all pets get ability boost
# Run as player in party, at their position

# Reset flag
scoreboard players set @s ec.pc_pack 0

# Only relevant if this player has Beastmaster 10+
execute unless score @s adv.beastmaster matches 10.. run return 0

# Count party members with Beastmaster 15+ within 48 blocks (via macro)
function evercraft:party/combos/pack_tactics_count with storage evercraft:party temp
